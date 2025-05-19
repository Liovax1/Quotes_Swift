//
//  Exercice5-2.swift
//  Dev_swift
//
//  Created by SDV Bordeaux on 24/04/2025.
//

import SwiftUI

struct Exercice5_2: View {
    @State private var diceRoll: Int = 0
    
    var diceSymbol: String {
        switch diceRoll {
        case 1: return "die.face.1"
        case 2: return "die.face.2"
        case 3: return "die.face.3"
        case 4: return "die.face.4"
        case 5: return "die.face.5"
        case 6: return "die.face.6"
        default: return "questionmark.square.fill"
        }
    }
    
    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()
            
            VStack(spacing: 50) {
                Image(systemName: diceSymbol)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.black)
                
                Button(action: {
                    diceRoll = Int.random(in: 1...6)
                }) {
                    Text("Roll the Dice")
                        .fontWeight(.semibold)
                        .padding()
                        .frame(width: 200)
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(20)
                }
            }
        }
    }
}

#Preview {
    Exercice5_2()
}
