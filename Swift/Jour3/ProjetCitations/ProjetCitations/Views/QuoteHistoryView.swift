import SwiftUI

struct QuoteHistoryView: View {
    @State private var model = QuoteViewModel()

    var body: some View {
        NavigationView {
            List(model.history) { quote in
                VStack(alignment: .leading, spacing: 8) {
                    Text("“\(quote.quote)”")
                        .italic()
                    Text("- \(quote.author)")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
            }
            .navigationTitle("Historique")
        }
        .onAppear {
            model.loadHistory()
        }
    }
}