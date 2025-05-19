import Foundation

class PokemonListViewModel: ObservableObject {
    @Published var pokemons: [Pokemon] = []

    func fetchPokemons() {
        guard let url = URL(string: "https://pokeapi.co/api/v2/pokemon?limit=100") else { return }

        URLSession.shared.dataTask(with: url) { data, _, error in
            DispatchQueue.main.async {
                if let data = data {
                    do {
                        let decoded = try JSONDecoder().decode(PokemonResponse.self, from: data)
                        self.pokemons = decoded.results
                    } catch {
                        print("Erreur décodage :", error)
                    }
                } else if let error = error {
                    print("Erreur réseau :", error)
                }
            }
        }.resume()
    }
}
