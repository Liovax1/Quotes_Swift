import Foundation
import Observation

@Observable
class AllAuthorsViewModel {
    var authors: [Author] = []

    func loadAuthors(from quotes: [Quote]) {
        let names = Set(quotes.map { $0.author })
        self.authors = names.map { Author(name: $0) }.sorted { $0.name < $1.name }
    }
}