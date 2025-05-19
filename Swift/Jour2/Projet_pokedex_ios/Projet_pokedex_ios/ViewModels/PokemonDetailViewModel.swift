import Foundation

class PokemonDetailViewModel: ObservableObject {
    @Published var pokemonDetail: PokemonDetail?
    @Published var isLoading = false
    @Published var errorMessage: String?

    func fetchPokemonDetail(for name: String) {
        isLoading = true
        errorMessage = nil

        let urlString = "https://pokeapi.co/api/v2/pokemon/\(name.lowercased())"
        guard let url = URL(string: urlString) else {
            errorMessage = "URL invalide"
            isLoading = false
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            DispatchQueue.main.async {
                self.isLoading = false

                if let error = error {
                    self.errorMessage = "Erreur de réseau : \(error.localizedDescription)"
                    return
                }

                guard let data = data else {
                    self.errorMessage = "Données non reçues"
                    return
                }

                do {
                    let decoded = try JSONDecoder().decode(PokemonDetail.self, from: data)
                    self.pokemonDetail = decoded
                } catch {
                    self.errorMessage = "Erreur de décodage : \(error)"
                }
            }
        }.resume()
    }
}
