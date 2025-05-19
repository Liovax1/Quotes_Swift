import SwiftUI

struct AuthorQuotesView: View {
    let author: Author
    let allQuotes: [Quote]

    var filteredQuotes: [Quote] {
        allQuotes.filter { $0.author == author.name }
    }

    var body: some View {
        List(filteredQuotes, id: \.id) { quote in
            VStack(alignment: .leading, spacing: 8) {
                Text("“\(quote.quote)”")
                    .italic()
                Text("- \(quote.author)")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
        .navigationTitle(author.name)
    }
}