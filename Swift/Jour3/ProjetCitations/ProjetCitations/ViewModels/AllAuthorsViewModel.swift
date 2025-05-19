import Foundation
import Observation

@Observable
class AllAuthorsViewModel {
    var allQuotes: [Quote] = []
    var authors: [Author] = []
    var isLoading = false
    var errorMessage: String?

    func fetchQuotesAndAuthors() {
        isLoading = true
        errorMessage = nil

        guard let url = URL(string: "https://api.quotable.io/quotes?limit=150") else {
            errorMessage = "URL invalide"
            isLoading = false
            return
        }

        var request = URLRequest(url: url)
        request.httpMethod = "GET"

        let session = URLSession(configuration: .default, delegate: SSLBypassDelegate2(), delegateQueue: nil)

        session.dataTask(with: request) { data, _, error in
            DispatchQueue.main.async {
                self.isLoading = false

                if let error = error {
                    self.errorMessage = "Erreur réseau : \(error.localizedDescription)"
                    return
                }

                guard let data = data else {
                    self.errorMessage = "Données manquantes"
                    return
                }

                do {
                    let decoded = try JSONDecoder().decode(QuoteListResponse.self, from: data)
                    self.allQuotes = decoded.results
                    let uniqueNames = Set(self.allQuotes.map { $0.author })
                    self.authors = uniqueNames.map { Author(name: $0) }.sorted { $0.name < $1.name }
                } catch {
                    self.errorMessage = "Erreur de décodage : \(error.localizedDescription)"
                }
            }
        }.resume()
    }
}

struct QuoteListResponse: Decodable {
    let results: [Quote]
}

class SSLBypassDelegate2: NSObject, URLSessionDelegate {
    func urlSession(_ session: URLSession, didReceive challenge: URLAuthenticationChallenge,
                    completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) {
        completionHandler(.useCredential, URLCredential(trust: challenge.protectionSpace.serverTrust!))
    }
}
