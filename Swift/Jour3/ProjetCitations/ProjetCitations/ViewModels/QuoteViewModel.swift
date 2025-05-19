import Foundation
import Observation

@MainActor
@Observable class QuoteViewModel {
    var quote: Quote?
    var history: [Quote] = []
    var isLoading = false
    var errorMessage: String?

    private let historyKey = "quoteHistory"

    var authors: [Author] {
        let names = Set(history.map { $0.author })
        return names.map { Author(name: $0) }.sorted { $0.name < $1.name }
    }

    func loadHistory() {
        if let data = UserDefaults.standard.data(forKey: historyKey),
           let decoded = try? JSONDecoder().decode([Quote].self, from: data) {
            self.history = decoded
        }
    }

    private func saveToHistory(_ quote: Quote) {
        guard !history.contains(where: { $0.quote == quote.quote && $0.author == quote.author }) else { return }
        history.insert(quote, at: 0)
        if history.count > 50 {
            history = Array(history.prefix(50))
        }
        if let encoded = try? JSONEncoder().encode(history) {
            UserDefaults.standard.set(encoded, forKey: historyKey)
        }
    }

    func fetchQuote() {
        Task {
            isLoading = true
            if let newQuote = await APIViewModel.fetchQuote() {
                quote = newQuote
                saveToHistory(newQuote)
            } else {
                errorMessage = "Erreur lors de la génération de la citation."
            }
            isLoading = false
        }
    }
}