import SwiftUI

struct PokemonCardView: View {
    let pokemon: Pokemon

    var body: some View {
        NavigationLink(destination: PokemonDetailView(pokemonName: pokemon.name)) {
            VStack(spacing: 8) {
                if let url = pokemon.imageURL {
                    AsyncImage(url: url) { image in
                        image
                            .resizable()
                            .scaledToFit()
                            .frame(height: 80)
                    } placeholder: {
                        ProgressView()
                    }
                } else {
                    Image(systemName: "questionmark")
                        .resizable()
                        .frame(height: 80)
                }

                Text(pokemon.name.capitalized)
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.white)
            .cornerRadius(12)
            .shadow(color: .gray.opacity(0.3), radius: 4, x: 0, y: 2)
        }
        .buttonStyle(PlainButtonStyle())
    }
}
