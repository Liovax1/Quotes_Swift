//
//  Exercice1-2.swift
//  Dev_swift
//
//  Created by SDV Bordeaux on 24/04/2025.
//

import SwiftUI

struct Exercice1_2: View {
    
    @State private var temp: Double = 0
    
    var temperatureMessage: String {
        switch temp {
        case ..<(-10): return "Tu veux que je vienne te dégeler ? 🥶"
        case -10...0: return "Tu dois sacrément avoir froid !"
        case 1...15: return "Penses à prendre un manteau quand même ! 🥲"
        case 16...25: return "Il fait beau aujourd'hui ! 😆☀️"
        case 26...35: return "Go à la plage ! 🏖️"
        case 36...44: return "T'es encore là ou t'es en cendres ? 🔥"
        case 45...: return "Alors là, bon courage.. 🥵🤣"
        default: return "🌡️"
        }
    }
    
    
    var backgroundColor: Color {
        let minTemp: Double = -30
        let maxTemp: Double = 100
        let ratio = max(0, min(1, (temp - minTemp) / (maxTemp - minTemp)))
        
        let red = ratio
        let blue = 1 - ratio
        return Color(red: red, green: 0.2, blue: blue)
    }
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack(spacing: 10) {
                Text("\(Int(temp))°C")
                    .foregroundColor(.white)
                    .bold()
                
                Text(temperatureMessage)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .padding(.top, 10)
                
                Slider(value: $temp, in: -30...100, step: 1)
                    .padding()
            }
            .padding()
        }
    }
}

#Preview {
    Exercice1_2()
}
