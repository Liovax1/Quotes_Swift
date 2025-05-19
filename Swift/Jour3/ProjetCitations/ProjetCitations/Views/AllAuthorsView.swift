import SwiftUI

struct AllAuthorsView: View {
    @State private var model = AllAuthorsViewModel()

    var body: some View {
        NavigationStack {
            if model.isLoading {
                ProgressView("Chargement des auteurs...")
            } else if let error = model.errorMessage {
                Text(error)
                    .foregroundColor(.red)
            } else {
                List(model.authors) { author in
                    NavigationLink(destination: AuthorQuotesView(authorName: author.name, quotes: model.quotesByAuthor[author.name] ?? [])) {
                        Text(author.name)
                    }
                }
                .navigationTitle("Tous les auteurs")
            }
        }
        .onAppear {
            if model.authors.isEmpty {
                model.fetchAllAuthorsAndQuotes()
            }
        }
    }
}