//
//  Text.swift
//  Playground
//
//  Created by Wisdom on 7/13/25.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.body)
            //.fontWeight(.medium)
            // .bold()
            .underline(true, color: Color.red)
            .strikethrough(true, color: Color.gray)
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
