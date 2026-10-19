//
//  ContentView.swift
//  Meeting2
//
//  Created by Eileen Guan on 2026/9/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            Text(song1.title)
            Text(song1.artist)
            
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            Text(song1.title)
            Text(song1.artist)
            
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            Text(song1.title)
            Text(song1.artist)
            
//Personalcell()
//Personalcell()
//Personalcell()
        
        }
        .padding()
    }
}

struct Song{
    var title: String
    var artist: String
    var duration: String
}

let song1 = Song(title: "Hello, Goodbye",
                 artist: "Eileen Guan",
                 duration: "3:49")

struct Personalcell: View {
    var name: String
    var age: Int
    var body: some View{
        VStack{
            Text(name)
            Text(name)
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            Text(song1.title)
            Text(song1.artist)
                
        }
    }
}


#Preview {
    ContentView()
}
