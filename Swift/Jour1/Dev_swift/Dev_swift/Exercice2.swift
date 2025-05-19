//
//  SwiftUIView.swift
//  Dev_swift
//
//  Created by SDV Bordeaux on 23/04/2025.
//

import SwiftUI

struct Exercice2: View {
    var body: some View {
        ZStack {
            Color.red
            Rectangle()
                .fill(Color.green)
                .frame(width: 100, height: 100)
            Ellipse()
                .fill(Color.blue)
                .frame(width: 50, height: 50)
            Text("Liova")
        }
        
    }

}

#Preview {
    Exercice2()
}
