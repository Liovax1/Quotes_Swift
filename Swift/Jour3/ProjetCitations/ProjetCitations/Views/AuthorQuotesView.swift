import SwiftUI

struct AuthorQuotesView: View {
    let authorName: String
    let allQuotes: [Quote]

    var filteredQuotes: [Quote] {
        allQuotes.filter { $0.author == authorName }
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
        .navigationTitle(authorName)
    }
}