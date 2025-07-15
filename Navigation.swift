//
//  Navigation.swift
//  Playground
//
//  Created by Wisdom on 7/15/25.
//

import SwiftUI

struct Navigation: View {
    var body: some View {
        NavigationView {
            ScrollView {
                Text("Hello world")
                Text("Hello world")
                Text("Hello world")
                Text("Hello world")
                Text("Hello world")
                
                NavigationLink {
                    SecondScreen()
                } label: {
                    Text("Go to second screen")
                }

            }
            .navigationTitle("All inboxes")
            //.navigationBarTitleDisplayMode(.inline)
            //.navigationBarHidden(true)
            .navigationBarItems(
                leading:
                    HStack {
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                },
                trailing:
                    NavigationLink(
                        destination: SettingsScreen(),
                        label: {
                          Image(systemName: "gear")
                        })
                    .accentColor(.purple)
                )
        }
       
    }
}

struct SecondScreen: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            VStack {
                Text("Hello from second screen")
                    .navigationTitle("Second screen")
                
                Button("Go back") {
                    presentationMode.wrappedValue.dismiss()
                }
            }
        }
    }
}

struct SettingsScreen: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            VStack {
                Text("Hello from settings screen")
                    .navigationTitle("Settings screen")
                
                Button("Go back") {
                    presentationMode.wrappedValue.dismiss()
                }
            }
        }
    }
}

struct Navigation_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
    }
}
