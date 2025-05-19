//
//  Exercice5.swift
//  Dev_swift
//
//  Created by SDV Bordeaux on 24/04/2025.
//

import SwiftUI

struct Exercice5: View {
    var body: some View {
        VStack(spacing: 20) {
            // Image du livre
            Image("Creativity")
                .resizable()
                .scaledToFit()
                .frame(width: 200)
                .cornerRadius(10)
            
            Text("Ed Catmull")
                .foregroundColor(.gray)
            
            Text("Creativity, Inc")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            
            Text("""
            This is the story behind the company that changed animation forever. Here, the founder of Pixar reveals the ideas and techniques that have made Pixar one of the most widely admired creative bus..
            """)
            .font(.body)
            .foregroundColor(.gray)
            .multilineTextAlignment(.center)
            .padding(.horizontal)
            
            HStack(spacing: 15) {
                TagView(title: "Business")
                TagView(title: "Print")
            }
            
            Divider()
                .padding(.top, 10)

            Button(action: {
            }) {
                Text("Buy for 17.85$")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding(.horizontal, 40)
                    .padding(.vertical, 12)
                    .background(Color.black)
                    .clipShape(Capsule())
            }
        }
    }
}

struct TagView: View {
    var title: String
    
    var body: some View {
        Text(title)
            .font(.subheadline)
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
            .overlay(
                Capsule()
                    .stroke(Color.black, lineWidth: 1)
            )
    }
}

#Preview {
    Exercice5()
}
