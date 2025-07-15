//
//  Ternary.swift
//  Playground
//
//  Created by Wisdom on 7/15/25.
//

import SwiftUI

struct Ternary: View {
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack {
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            RoundedRectangle(cornerRadius: isStartingState ? 25.0 : 0)
                .fill(isStartingState ? Color.blue : Color.red)
                .frame(width: 200, height: 100)
            
            Spacer()
        }
    }
}

struct Ternary_Previews: PreviewProvider {
    static var previews: some View {
        Ternary()
    }
}
