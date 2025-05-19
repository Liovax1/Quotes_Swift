//
//  ContentView.swift
//  Dev_swift
//
//  Created by SDV Bordeaux on 23/04/2025.
//

import SwiftUI

struct Exercice1: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Danilio SANTANA")
            Text("Brazil").opacity(0.5)
            Text("Racing Driver")
                .fontWeight(.bold)
                .strikethrough(true)
        }
        .padding()
    }
}

#Preview {
    Exercice1()
}
