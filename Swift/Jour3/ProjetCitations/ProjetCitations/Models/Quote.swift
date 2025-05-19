import Foundation

struct Quote: Codable, Identifiable, Hashable {
    var id = UUID()
    let content: String
    let author: String

    enum CodingKeys: String, CodingKey {
        case content
        case author
    }

    var quote: String { content }
}
