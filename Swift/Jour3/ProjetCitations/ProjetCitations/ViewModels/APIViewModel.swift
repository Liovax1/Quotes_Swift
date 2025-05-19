import Foundation

struct APIViewModel {
    static func fetchQuote() async -> Quote? {
        guard let url = URL(string: "https://api.quotable.io/random") else {
            print("❌ URL invalide")
            return nil
        }

        var request = URLRequest(url: url)
        request.httpMethod = "GET"

        let session = URLSession(configuration: .default, delegate: SSLBypassDelegate(), delegateQueue: nil)

        do {
            let (data, _) = try await session.data(for: request)
            let decoded = try JSONDecoder().decode(Quote.self, from: data)
            return decoded
        } catch {
            print("❌ Erreur : \(error.localizedDescription)")
            return nil
        }
    }
}

class SSLBypassDelegate: NSObject, URLSessionDelegate {
    func urlSession(_ session: URLSession, didReceive challenge: URLAuthenticationChallenge,
                    completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) {
        completionHandler(.useCredential, URLCredential(trust: challenge.protectionSpace.serverTrust!))
    }
}