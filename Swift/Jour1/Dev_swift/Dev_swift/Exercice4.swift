//
//  Exercice4.swift
//  Dev_swift
//
//  Created by SDV Bordeaux on 23/04/2025.
//

import SwiftUI

struct Exercice4: View {
    var body: some View {
        HStack {
            Image(systemName: "person.circle")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(.orange)
            
            Exercice1()
        }
        RoundedRectangle(cornerRadius: 50)
            .stroke(Color.black, lineWidth: 2)
            .frame(height: 600)
            .padding(.horizontal)
        
    }
}

#Preview {
    Exercice4()
}
