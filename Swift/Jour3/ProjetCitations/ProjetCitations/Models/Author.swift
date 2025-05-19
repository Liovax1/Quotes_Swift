import Foundation

struct Author: Codable, Identifiable, Hashable {
    var id: String { name }
    let name: String
}