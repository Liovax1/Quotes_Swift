//
//  Exercice3-2.swift
//  Dev_swift
//
//  Created by SDV Bordeaux on 24/04/2025.
//

import SwiftUI

struct Exercice3_2: View {
    
    @State private var progress: Double = 0.50
    
    var body: some View {
        VStack(spacing: 30) {
            ProgressCircle(progress: progress)
            ProgressSlider(progress: $progress)
        }
        .padding()
    }
}

struct ProgressCircle: View {
    var progress: Double
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color.gray.opacity(0.4), lineWidth: 20)
            
            Circle()
                .trim(from: 0, to: progress)
                .stroke(Color.purple, style: StrokeStyle(lineWidth: 20, lineCap: .round))
                .rotationEffect(.degrees(-90))
            
            Text("\(Int(progress * 100))%")
                .font(.title)
                .fontWeight(.medium)
        }
        .frame(width: 200, height: 200)
    }
}

struct ProgressSlider: View {
    @Binding var progress: Double
    
    var body: some View {
        Slider(value: $progress, in: 0...1)
            .accentColor(.purple)
            .padding(.horizontal)
    }
}

#Preview {
    Exercice3_2()
}
