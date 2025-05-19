import SwiftUI
import SwiftData

struct QuoteHistoryView: View {
    @State private var model = QuoteViewModel()
    @Query var history: [Quote]

    var body: some View {
        NavigationView {
            if !history.isEmpty {
                List(history) { quote in
                    VStack(alignment: .leading, spacing: 8) {
                        Text("“\(quote.quote)”")
                            .italic()
                        Text("- \(quote.author)")
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                }.navigationTitle("Historique")
            }
            
            
            
        }
        .onAppear {
            model.loadHistory()
        }
    }
}
