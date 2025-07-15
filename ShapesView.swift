//
//  ShapesView.swift
//  Playground
//
//  Created by Wisdom on 7/13/25.
//

import SwiftUI

struct ShapesView: View {
    @State var backgroundColor: Color = Color.gray
    @State var counter: Int = 0
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea(.all)
            
            
            VStack {
                Text("\(counter)")
                    .foregroundColor(.white)
                    .font(.title)
                Button {
                    backgroundColor = .purple
                } label: {
                    Text("Button #1")
                        .padding()
                        .background(Color.white)
                        .foregroundColor(.black)
                        .cornerRadius(8)
                }
                
                

                    Button {
                        backgroundColor = .gray
                    } label: {
                        Text("Button #2")
                            .padding()
                            .background(Color.white)
                            .foregroundColor(.black)
                            .cornerRadius(8)
                    }
                
                
                Layouts(counter: $counter)
            }

           
          
        }

    }
    
    
    
    struct Layouts: View {
        @Binding var counter: Int
        
        var body: some View {
            VStack(spacing: 20) {
                HStack {
                    Text("Left side")
                    Spacer()
                    Text("Right side")
                }
                .padding(.horizontal, 20)
                
                HStack(spacing: 40) {
                    Text("Left side")
                    Text("Right side")
                }
                
                HStack {
                    Text("Left side")
                    Spacer().frame(width: 60)
                    Text("Right side")
                }
                
                HStack {
                    Button {
                       counter += 1
                    } label: {
                        Text("Increment counter")
                            .padding()
                            .background(Color.white)
                            .foregroundColor(.black)
                            .cornerRadius(8)
                    }
                    Button {
                        if counter != 0 {
                            counter -= 1
                        }
                       
                    } label: {
                        Text("Decrement counter")
                            .padding()
                            .background(Color.white)
                            .foregroundColor(.black)
                            .cornerRadius(8)
                    }
                }
            }
        }
    }
}

struct ShapesView_Previews: PreviewProvider {
    static var previews: some View {
        ShapesView()
    }
}
