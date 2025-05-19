import SwiftUI

struct AllAuthorsView: View {
    @State private var model = QuoteViewModel()

    var body: some View {
        NavigationStack {
            List(model.authors) { author in
                NavigationLink(destination: AuthorQuotesView(authorName: author.name, allQuotes: model.history)) {
                    Text(author.name)
                }
            }
            .navigationTitle("Tous les auteurs")
        }
        .onAppear {
            model.loadHistory()
        }
    }
}