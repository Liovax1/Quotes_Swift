//
//  Exercice3.swift
//  Dev_swift
//
//  Created by SDV Bordeaux on 23/04/2025.
//

import SwiftUI

struct Exercice3: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.green.opacity(0.5), .blue]),
                           startPoint: .top,
                           endPoint: .bottom)
                .ignoresSafeArea()

            VStack {
                Rectangle()
                    .fill(Color.orange)
                    .frame(width: 50, height: 50)

                Rectangle()
                    .fill(Color.red)
                    .frame(width: 50, height: 50)
                    .cornerRadius(10)

                Circle()
                    .stroke(Color.yellow, lineWidth: 4)
                    .frame(width: 50, height: 50)
            }
        }
    }
}

#Preview {
    Exercice3()
}
