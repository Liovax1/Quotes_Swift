import SwiftUI

struct AllAuthorsView: View {
    @State private var model = AllAuthorsViewModel()

    var body: some View {
        NavigationStack {
            if model.isLoading {
                ProgressView("Chargement…")
            } else if let error = model.errorMessage {
                Text(error)
                    .foregroundColor(.red)
                    .padding()
            } else {
                List(model.authors) { author in
                    NavigationLink(destination: AuthorQuotesView(author: author, allQuotes: model.allQuotes)) {
                        Text(author.name)
                    }
                }
                .navigationTitle("Tous les auteurs")
            }
        }
        .onAppear {
            model.fetchQuotesAndAuthors()
        }
    }
}