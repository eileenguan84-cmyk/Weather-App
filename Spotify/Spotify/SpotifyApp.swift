//
//  SpotifyApp.swift
//  Spotify
//
//  Created by Eileen Guan on 2026/9/28.
//

import SwiftUI

@main
struct SpotifyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
            VStack{
                Image(systemName: "1")
                HStack{
                    VStack{
                        Text("Imgonnagetyouback")
                            .bold()
                            .font(.title)
                            .padding(6)
                        Text("Taylor Swift")
                            .foregroundStyle(Color.gray)
                        .padding(1)}
                    Image(systemName: "2")
                }
                Image(systemName: "3")
                
            }
        }
    }
}
