//
//  HourlyForecast.swift
//  Weather
//
//  Created by Eileen Guan on 2026/10/12.
//

import SwiftUI

struct HourlyRowView: View {
    var time: String
    var img: String
    var temp: String
    
    var body: some View {
        VStack(spacing:10){
            Text(time)
                .font(.subheadline)
                .foregroundColor(.white)
            
            Image(systemName: img)
                .font(.title)
                .symbolRenderingMode(.multicolor)
            
            Text(temp)
                .font(.subheadline)
                .foregroundColor(.white)
        }
    }
}

let HourlyRowView0 = HourlyRowView(time: "Now",
                                   img: "sun.max.fill",
                                   temp: "54°")

let HourlyRowView1 = HourlyRowView(time: "1PM",
                                   img: "sun.max.fill",
                                   temp: "55°")

let HourlyRowView2 = HourlyRowView(time: "2PM",
                                   img: "sun.max.fill",
                                   temp: "57°")

let HourlyRowView3 = HourlyRowView(time: "3PM",
                                   img: "cloud.sun.fill",
                                   temp: "57°")

let HourlyRowView4 = HourlyRowView(time: "4PM",
                                   img: "sun.max.fill",
                                   temp: "55°")


struct HourlyForecastView: View{
    var body: some View{
        VStack(alignment: .leading, spacing: 10){
            HStack(spacing:5){
                Image(systemName: "clock")
                    .foregroundColor(.white.opacity(0.8))
                Text("HOURLY FORCAST")
                    .font(.system(size: 15, weight: .regular))
                    .foregroundColor(.white.opacity(0.8))
                    .padding(3)
            }
            HStack(spacing: 40){
                HourlyRowView0
                HourlyRowView1
                HourlyRowView2
                HourlyRowView3
                HourlyRowView4
            }
        }
        .frame(height: 110)
        .padding()
        .background(.white.opacity(0.2), in: RoundedRectangle(cornerRadius: 10, style: .continuous))
    }
    }
