import SwiftUI

struct PokemonDetailView: View {
    let pokemonName: String
    @StateObject private var viewModel = PokemonDetailViewModel()
    
    var body: some View {
        ZStack {
            if let pokemon = viewModel.pokemonDetail {
                // 👇 tout ton ancien body ici, en remplaçant chaque `pokemon.` par `pokemon.`
                ScrollView {
                    VStack(spacing: 20) {
                        AsyncImage(url: URL(string: pokemon.sprites.front_default)) { image in
                            image
                                .resizable()
                                .scaledToFit()
                                .frame(width: 150, height: 150)
                        } placeholder: {
                            ProgressView()
                        }
                        
                        Text(pokemon.name.capitalized)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        
                        HStack {
                            ForEach(pokemon.types, id: \.slot) { typeEntry in
                                Text(typeEntry.type.name.capitalized)
                                    .font(.subheadline)
                                    .padding(8)
                                    .background(Color.white.opacity(0.25))
                                    .cornerRadius(8)
                            }
                        }
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Taille : \(pokemon.height)")
                            Text("Poids : \(pokemon.weight)")
                            Text("Expérience de base : \(pokemon.base_experience)")
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Statistiques")
                                .font(.headline)
                            ForEach(pokemon.stats, id: \.stat.name) { stat in
                                HStack {
                                    Text(stat.stat.name.capitalized)
                                        .frame(width: 100, alignment: .leading)
                                    ProgressView(value: Float(stat.base_stat), total: 100)
                                        .progressViewStyle(LinearProgressViewStyle(tint: .blue))
                                }
                            }
                        }
                        .padding()
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Capacités")
                                .font(.headline)
                            ForEach(pokemon.abilities, id: \.ability.name) { ability in
                                Text(ability.ability.name.capitalized)
                            }
                        }
                        .padding()
                    }
                    .padding()
                }
                .background(backgroundColor(for: pokemon.types.first?.type.name ?? "normal"))
                .ignoresSafeArea()
            } else if viewModel.isLoading {
                ProgressView("Chargement...")
            } else if let error = viewModel.errorMessage {
                Text(error)
                    .foregroundColor(.red)
            }
        }
        .onAppear {
            viewModel.fetchPokemonDetail(for: pokemonName)
        }
    }
    
    
    func backgroundColor(for type: String) -> Color {
        switch type.lowercased() {
        case "normal": return Color.gray.opacity(0.5)
        case "fire": return Color.red
        case "water": return Color.blue
        case "grass": return Color.green
        case "electric": return Color.yellow
        case "ice": return Color.cyan
        case "fighting": return Color.orange
        case "poison": return Color.purple
        case "ground": return Color.brown
        case "flying": return Color.indigo
        case "psychic": return Color.pink
        case "bug": return Color.teal
        case "rock": return Color.gray
        case "ghost": return Color.black
        case "dragon": return Color.blue.opacity(0.7)
        case "dark": return Color.black.opacity(0.8)
        case "steel": return Color.gray.opacity(0.7)
        case "fairy": return Color.pink.opacity(0.5)
        default: return Color.gray
        }
    }
}

