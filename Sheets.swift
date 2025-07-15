//
//  Sheets.swift
//  Playground
//
//  Created by Wisdom on 7/15/25.
//

import SwiftUI

struct Sheets: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea(edges: .all)
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Open Sheet")
                    .foregroundColor(.black)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            }
        }
        .sheet(isPresented: $showSheet) {
            SheetComponent()
        }
//        .fullScreenCover(isPresented: $showSheet, content: {
//            SheetComponent()
//        })
    }
}


struct SheetComponent: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.black)
                        .font(.title)
                        .padding()
                }

                Spacer()
            }

            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    Text("Page content")
                        .font(.title2)
                    Text("More content can go here.")
                        .foregroundColor(.gray)
                }
                .padding()
            }

            Spacer()
        }
        .background(Color.white)
        .ignoresSafeArea(edges: .bottom)
    }
}


struct Sheets_Previews: PreviewProvider {
    static var previews: some View {
        Sheets()
    }
}
