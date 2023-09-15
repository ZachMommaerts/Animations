//
//  Lesson3.swift
//  Animations
//
//  Created by Zach Mommaerts on 9/15/23.
//

import SwiftUI

struct AnimatingBindings: View {
    @State private var animationAmount = 1.0
    
    var body: some View {
        VStack {
            Stepper("Scale amount", value: $animationAmount.animation(
                .easeInOut(duration: 1)
                .repeatCount(3, autoreverses: true)
            ), in: 1...10)
            
            Spacer()
            
            Button("Tap Me") {
                animationAmount += 1
            }
            .padding(50)
            .background(.red)
            .foregroundColor(.white)
            .clipShape(Circle())
            .scaleEffect(animationAmount)
        }
    }
}
struct Lesson3_Previews: PreviewProvider {
    static var previews: some View {
        AnimatingBindings()
    }
}
