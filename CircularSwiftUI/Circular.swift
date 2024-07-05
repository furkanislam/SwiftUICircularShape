//
//  Circular.swift
//  CircularSwiftUI
//
//  Created by Furkan İSLAM on 5.07.2024.
//

import SwiftUI

struct Circular: View {
    
    let lineWidth : CGFloat
    let backgroundColor : Color
    let foregroundColor : Color
    let percentage : Double
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                CircularShape()
                    .stroke(style: StrokeStyle(lineWidth: lineWidth))
                .fill(backgroundColor)
                CircularShape(percent: percentage)
                    .stroke(style: StrokeStyle(lineWidth: lineWidth))
                .fill(foregroundColor)
            }
            .animation(.easeInOut(duration: 1.0), value: percentage)
            .padding(lineWidth / 1.5)
        }
     
    }
}

#Preview {
    Circular(lineWidth: 10, backgroundColor: .blue, foregroundColor: .green, percentage: 50)
}
