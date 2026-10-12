//
//  ContentView.swift
//  Spotify
//
//  Created by Eileen Guan on 2026/9/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{

            Image("1")
                .resizable()
                .frame(width:350,height:500)
            HStack{
                VStack(alignment:.leading){
                    Text("imgonnagetyouback")
                        .bold()
                        .font(.headline)

                    Text("Taylor Swift")
                        .foregroundStyle(Color.gray)
                }
                Spacer()

                Image(systemName: "heart")
                    .font(.system(size: 30, weight: .semibold))
                    .frame(width: 30, height: 30)
                    .padding(10)
            }
            .padding(10)
            
            
            VStack(spacing:20){
                Slider(value:
                        .constant(0.28))
                .tint(.purple)
                HStack{
                    Text("0:26")
                    Spacer()
                    Image(systemName: "backward.fill")
                    Spacer()
                    Image(systemName: "pause.fill")
                    Spacer()
                    Image(systemName: "forward.fill")
                    Spacer()
                    Text("-3:29")
                }
            }
            .padding(.horizontal, 20)
                    
    
        }
    }
}
    #Preview {
        ContentView()
    }
