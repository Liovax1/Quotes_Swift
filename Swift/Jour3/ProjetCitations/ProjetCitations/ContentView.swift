import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            QuoteView()
                .tabItem {
                    Image(systemName: "quote.bubble.fill")
                    Text("Citation")
                }

            QuoteHistoryView()
                .tabItem {
                    Image(systemName: "clock.arrow.circlepath")
                    Text("Historique")
                }

            AllAuthorsView()
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Auteurs")
                }

            Text("Mini-jeu bientôt…")
                .tabItem {
                    Image(systemName: "gamecontroller.fill")
                    Text("Jeu")
                }
        }
    }
}


#Preview {
    ContentView()
}
