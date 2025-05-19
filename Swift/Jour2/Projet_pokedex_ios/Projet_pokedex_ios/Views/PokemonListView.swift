import SwiftUI

struct PokemonListView: View {
    @StateObject private var viewModel = PokemonListViewModel()

    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        NavigationView {
            if viewModel.pokemons.isEmpty {
                ProgressView("Chargement...")
            } else {
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 16) {
                        ForEach(viewModel.pokemons) { pokemon in
                            PokemonCardView(pokemon: pokemon)
                        }
                    }
                    .padding()
                }
                .navigationTitle("Liste des Pokémons")
            }
        }
        .onAppear {
            viewModel.fetchPokemons()
        }
    }
}

#Preview {
    PokemonListView()
}
