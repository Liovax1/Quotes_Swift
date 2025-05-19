import Foundation
import Observation

@Observable
class AllAuthorsViewModel {
    var quotesByAuthor: [String: [Quote]] = [:]
    var authors: [Author] = []
    var isLoading = false
    var errorMessage: String?

    func fetchAllAuthorsAndQuotes() {
        isLoading = true
        errorMessage = nil

        Task {
            var allQuotes: [Quote] = []
            var page = 1
            let limit = 100
            var totalPages = 1

            repeat {
                let urlString = "https://api.quotable.io/quotes?limit=\(limit)&page=\(page)"
                guard let url = URL(string: urlString) else { break }

                var request = URLRequest(url: url)
                request.httpMethod = "GET"

                let session = URLSession(configuration: .default, delegate: SSLBypassDelegate2(), delegateQueue: nil)

                do {
                    let (data, _) = try await session.data(for: request)
                    let decoded = try JSONDecoder().decode(QuotePageResponse.self, from: data)
                    allQuotes += decoded.results
                    totalPages = decoded.totalPages
                    page += 1
                } catch {
                    DispatchQueue.main.async {
                        self.errorMessage = "Erreur réseau : \(error.localizedDescription)"
                        self.isLoading = false
                    }
                    return
                }
            } while page <= totalPages

            let grouped = Dictionary(grouping: allQuotes, by: { $0.author })
            let authorList = grouped.keys.map { Author(name: $0) }.sorted { $0.name < $1.name }

            DispatchQueue.main.async {
                self.quotesByAuthor = grouped
                self.authors = authorList
                self.isLoading = false
            }
        }
    }
}

struct QuotePageResponse: Decodable {
    let count: Int
    let totalPages: Int
    let page: Int
    let results: [Quote]
}

class SSLBypassDelegate2: NSObject, URLSessionDelegate {
    func urlSession(_ session: URLSession, didReceive challenge: URLAuthenticationChallenge,
                    completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) {
        completionHandler(.useCredential, URLCredential(trust: challenge.protectionSpace.serverTrust!))
    }
}
