//
//  Lesson1.swift
//  Animations
//
//  Created by Zach Mommaerts on 9/15/23.
//

import SwiftUI

struct ImplicitAnimations: View {
    @State private var animationAmount = 1.0
    
    var body: some View {
        Button("Tap Me") {
            animationAmount += 1
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .scaleEffect(animationAmount)
        .blur(radius: (animationAmount - 1) * 3)
        .animation(.default, value: animationAmount)
    }
}

struct Lesson1_Previews: PreviewProvider {
    static var previews: some View {
        ImplicitAnimations()
    }
}
