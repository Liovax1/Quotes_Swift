//
//  Pokemon.swift
//  Projet_pokedex_ios
//
//  Created by SDV Bordeaux on 14/05/2025.
//

import Foundation

struct Pokemon: Identifiable, Decodable {
    let id = UUID()
    let name: String
    let url: String
    
    var idNumber: Int? {
        Int(url.trimmingCharacters(in: CharacterSet(charactersIn: "/"))
            .components(separatedBy: "/").last ?? "")
    }

    var imageURL: URL? {
        guard let id = idNumber else { return nil }
        return URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/\(id).png")
    }
}

struct PokemonResponse: Decodable {
    let results: [Pokemon]
}







