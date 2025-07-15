//
//  AnimationTiming.swift
//  Playground
//
//  Created by Wisdom on 7/15/25.
//

import SwiftUI

struct AnimationTiming: View {
    @State var isAnimating: Bool = false
    let _timing: Double = 1.0
    
    var body: some View {
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }

            RoundedRectangle(cornerRadius: 20 )
                .fill(isAnimating ? Color.green :Color.blue)
                .frame(
                    width: isAnimating ? 350 : 50,
                    height: 100)
                .animation(.spring(
                    response: _timing,
                    dampingFraction: 0.5,
                    blendDuration: 6.0
                ),
                  value: isAnimating
                )
            Spacer()
            
            RoundedRectangle(cornerRadius: 20 )
                .fill(isAnimating ? Color.green :Color.blue)
                .frame(
                    width: isAnimating ? 350 : 50,
                    height: 100)
                .animation(.linear(duration: _timing), value: isAnimating)

            RoundedRectangle(cornerRadius: 20 )
                .fill(isAnimating ? Color.green :Color.blue)
                .frame(
                    width: isAnimating ? 350 : 50,
                    height: 100)
                .animation(.easeIn(duration: _timing), value: isAnimating)

            RoundedRectangle(cornerRadius: 20 )
                .fill(isAnimating ? Color.green :Color.blue)
                .frame(
                    width: isAnimating ? 350 : 50,
                    height: 100)
                .animation(.easeInOut(duration: _timing), value: isAnimating)

            RoundedRectangle(cornerRadius: 20 )
                .fill(isAnimating ? Color.green :Color.blue)
                .frame(
                    width: isAnimating ? 350 : 50,
                    height: 100)
                .animation(.easeOut(duration: _timing), value: isAnimating)

        }
    }
}

struct AnimationTiming_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTiming()
    }
}
