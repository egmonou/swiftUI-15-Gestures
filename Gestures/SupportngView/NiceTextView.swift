//
//  NiceTextView.swift
//  Gestures
//
//  Created by Mohamed Nour on 19/11/2024.
//

import SwiftUI

struct NiceTextView: View {
    let text: String
    let bgColor: Color
    let fgColor: Color
    let raduis: CGFloat
    
    var body: some View {
        Text(text)
            .font(.title)
            .fontWeight(.semibold)
            .foregroundColor(fgColor)
            .padding()
            .background(bgColor.cornerRadius(raduis))
            .clipShape(.rect(cornerRadius: raduis))
        
    }
}

#Preview {
    NiceTextView(
        text: "Hellow Word",
        bgColor: .black,
        fgColor: .orange,
        raduis: 10)
}
