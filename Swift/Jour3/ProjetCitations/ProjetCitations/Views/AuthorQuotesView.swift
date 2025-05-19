import SwiftUI

struct AuthorQuotesView: View {
    let authorName: String
    let quotes: [Quote]

    var body: some View {
        List(quotes, id: \.id) { quote in
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