import Foundation
import SwiftData

@Model class Quote: Decodable, Identifiable, Hashable, Equatable {
    
    var id = UUID()
    var content: String
    var author: String
    
    
   required init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.content = try container.decode(String.self, forKey: .content)
        self.author = try container.decode(String.self, forKey: .author)
    }
    
    
    init (content: String, author: String) {
        self.content = content
        self.author = author
    }
    
    enum CodingKeys: String, CodingKey {
        case content
        case author
      
    }

    var quote: String { content }
    
    static func == (lhs: Quote, rhs: Quote) -> Bool {
        lhs.author == rhs.author
    }
    
}
