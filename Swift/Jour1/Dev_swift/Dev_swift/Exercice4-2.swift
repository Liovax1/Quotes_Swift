//
//  Exercice4-2.swift
//  Dev_swift
//
//  Created by SDV Bordeaux on 24/04/2025.
//

import SwiftUI

struct Exercice4_2: View {
    @State private var count: Int = 0

    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack(spacing: 30) {
                Text("Compteur : \(count)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.green)
                
                HStack(spacing: 20) {
                    Button("Incrémenter") {
                        count += 1
                    }
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.black)
                    .cornerRadius(10)
                    
                    Button("Réinitialiser") {
                        count = 0
                    }
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
            }
        }
    }
}

#Preview {
    Exercice4_2()
}
