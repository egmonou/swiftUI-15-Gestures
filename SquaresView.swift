//
//  SquaresView.swift
//  Gestures
//
//  Created by Mohamed Nour on 21/11/2024.
//

import SwiftUI

struct SquaresView: View {
    let colors: [Color]
    let dim: CGFloat
    let cornerRadius: CGFloat
    
    init(colors: [Color], dim: CGFloat = 50, cornerRadius: CGFloat = 5) {
        self.colors = colors
        self.dim = dim
        self.cornerRadius = cornerRadius
    }
    
    var body: some View {
        GridRow {
                ForEach(colors, id: \.self) { color in
                    color
                        .frame(width: dim, height: dim)
                        .cornerRadius(5)
            }
        }
    }
}


struct GradientBackGround: View {
    let colors: [Color]
    var opacity: CGFloat = 1
    init(colors: [Color], opacity: CGFloat = 1) {
        self.colors = colors
        self.opacity = opacity
    }
    
    var body: some View {
        LinearGradient(colors: colors, startPoint: .topLeading, endPoint: .bottomTrailing)
            .opacity(opacity)
            .ignoresSafeArea()
    }
}


#Preview {
    ZStack {
        GradientBackGround(colors: [.yellow, .indigo, .cyan], opacity: 0.4)
        
        Grid {
            ForEach(0 ..< 10) { item in
                SquaresView(
                    colors: [.green, .red, .blue],dim: CGFloat(item) * 5.0
                )
            }
            
            ForEach(0 ..< 10) { item in
                SquaresView(
                    colors: [.green, .red, .blue],dim: CGFloat(10-item) * 5.0
                )
            }
        }
    }
}
