//
//  ContentView.swift
//  Weather
//
//  Created by Eileen Guan on 2026/10/12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(
                colors: [.blue.opacity(0.9), .blue.opacity(0.3)],
                startPoint: .top,
                endPoint: .bottom)
            .ignoresSafeArea()
            
            VStack(spacing: 10){
                
                VStack{
                    Text("Chapel Hill")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                    
                    Text("55°")
                        .font(.system(size: 75, weight: .thin))
                        .foregroundColor(.white)
                    
                    Text("Sunny")
                        .font(.system(size: 20, weight: .medium))
                        .foregroundColor(.white.opacity(0.8))
                    
                    Text("H:57° L:45°")
                        .font(.system(size: 25, weight: .thin))
                        .foregroundColor(.white)
                }
                .frame(height: 200)
                
                HourlyForecastView()
                WeeklyForecastView()
                
            }
        }
    }
}


#Preview {
    ContentView()
}
