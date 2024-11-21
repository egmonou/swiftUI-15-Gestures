//
//  Sqqueares.swift
//  Gestures
//
//  Created by Mohamed Nour on 21/11/2024.
//

import SwiftUI

struct Sqqueares: View {
    let opacity: CGFloat
    init(opacity: CGFloat = 0.85) {
        self.opacity = opacity
    }
    var body: some View {
        Grid {
            SquaresView(colors: [.red, .green, .blue])
            SquaresView(colors: [.yellow, .indigo, .cyan])
            SquaresView(colors: [.brown, .orange, .gray])
        }
        .opacity(opacity)
    }
}

#Preview {
    Sqqueares()
}
