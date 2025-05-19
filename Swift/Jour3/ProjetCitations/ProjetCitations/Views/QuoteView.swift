import SwiftUI

struct QuoteView: View {
    @State private var model = QuoteViewModel()
    @Environment(\.modelContext) var modelContext

    var body: some View {
        VStack(spacing: 20) {
            if let quote = model.quote {
                Text("“\(quote.quote)”")
                    .font(.title2)
                    .italic()
                    .multilineTextAlignment(.center)
                    .padding()

                Text("- \(quote.author)")
                    .font(.headline)
                    .foregroundColor(.secondary)
            } else if model.isLoading {
                ProgressView("Chargement…")
            } else if let error = model.errorMessage {
                Text(error)
                    .foregroundColor(.red)
            }

            Button("Nouvelle citation") {
                withAnimation {
                    model.fetchQuote()
                }
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
        }.onChange(of: model.quote) { _, newValue in
            guard let newValue else { return }
            modelContext.insert(newValue)
        }
        .padding()
        .onAppear {
            model.loadHistory()
            model.fetchQuote()
        }
    }
}
