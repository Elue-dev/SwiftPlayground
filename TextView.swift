//
//  Text.swift
//  Playground
//
//  Created by Wisdom on 7/13/25.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        Text("Hello, This is a playground made for me to learn the Swift programming language. Please follow me on my journey!")
            .font(.body)
            //.fontWeight(.medium)
            //.bold()
//            .underline(true, color: Color.red)
//            .strikethrough(true, color: Color.gray)
//            .font(.system(size: 38, weight: .bold, design: .rounded))
            .baselineOffset(5)
            .multilineTextAlignment(.center)
//            .padding(15)
//            .kerning(1)
            .foregroundColor(.blue)
            .frame(width: 300, height: 100, alignment: .center)
            .minimumScaleFactor(0.1)
        
        Text("Uppercased text here".uppercased())
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
