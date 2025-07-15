//
//  Transition.swift
//  Playground
//
//  Created by Wisdom on 7/15/25.
//

import SwiftUI

struct Transition: View {
    @State var showView: Bool = false
    
    var body: some View {
         ZStack(alignment: .bottom) {
             VStack {
                 Button("Button") {
                     withAnimation(.easeInOut) {
                        showView.toggle()
                    }
                 }
                 Spacer()
             }

             if showView {
                 RoundedRectangle(cornerRadius: 30)
                     .frame(height: UIScreen.main.bounds.height * 0.5)
//                     .transition(.opacity.animation(.easeOut(duration: 0.5)))
//                     .transition(.scale.animation(.easeOut(duration: 0.5)))
//                     .transition(.asymmetric(
//                        insertion: .move(edge: .leading),
//                        removal: .move(edge: .bottom)))
                 .transition(.move(edge: .bottom))
                     .animation(.easeInOut(duration: 0.4),value: showView)
             }
         }
         .ignoresSafeArea(.container, edges: .bottom)
     }
}

struct Transition_Previews: PreviewProvider {
    static var previews: some View {
        Transition()
    }
}
