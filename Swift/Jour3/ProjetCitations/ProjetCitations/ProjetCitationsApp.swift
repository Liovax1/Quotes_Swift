//
//  ProjetCitationsApp.swift
//  ProjetCitations
//
//  Created by SDV Bordeaux on 14/05/2025.
//

import SwiftUI
import SwiftData

@main
struct ProjetCitationsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().modelContainer(for: Quote.self)
        }
    }
}
