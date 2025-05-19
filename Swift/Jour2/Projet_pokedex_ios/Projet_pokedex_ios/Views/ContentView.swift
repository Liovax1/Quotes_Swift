import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Accueil")
                }
            
            PokemonListView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Pokémons")
                }
        }
    }
}

#Preview {
    ContentView()
}
