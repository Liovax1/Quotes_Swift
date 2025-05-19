import Foundation

struct PokemonDetail: Decodable {
    let id: Int
    let name: String
    let height: Int
    let weight: Int
    let base_experience: Int
    let types: [PokemonTypeEntry]
    let stats: [PokemonStat]
    let abilities: [PokemonAbility]
    let sprites: PokemonSprites
}

struct PokemonTypeEntry: Decodable {
    let slot: Int
    let type: NamedAPIResource
}

struct PokemonStat: Decodable {
    let base_stat: Int
    let stat: NamedAPIResource
}

struct PokemonAbility: Decodable {
    let ability: NamedAPIResource
}

struct PokemonSprites: Decodable {
    let front_default: String
}

struct NamedAPIResource: Decodable {
    let name: String
    let url: String
}
