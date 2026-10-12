//
//  WeeklyForecast.swift
//  Weather
//
//  Created by Eileen Guan on 2026/10/12.
//

import SwiftUI

struct WeeklyRowView: View {
    var day: String
    var img: String
    var low_temp: String
    var high_temp: String
    
    var body: some View {
        HStack(spacing: 33){
            Text(day)
                .font(.system(size: 18, weight: .semibold))
                .foregroundColor(.white)
                .frame(width:60, height: 4)
            
            Image(systemName: img)
                .font(.title3)
                .symbolRenderingMode(.multicolor)
        
            Text(low_temp)
                .font(.system(size: 18, weight: .light))
                .foregroundColor(.white.opacity(0.6))
                .frame(width: 40, height: 4)
            
            Capsule()
                .fill(.blue.opacity(0.9))
                .frame(width: 40, height: 4)
            
            Text(high_temp)
                .font(.body)
                .foregroundColor(.white.opacity(0.6))
                .frame(width: 40, height: 4)
        }
    }
}

let WeeklyRowView0 = WeeklyRowView(day: "Today",
                      img: "cloud.fill",
                      low_temp: "45°",
                      high_temp: "57°")

let WeeklyRowView1 = WeeklyRowView(day: "Mon",
                      img: "sun.max.fill",
                      low_temp: "54°",
                      high_temp: "70°")

let WeeklyRowView2 = WeeklyRowView(day: "Tue",
                      img: "cloud.drizzle.fill",
                      low_temp: "43°",
                      high_temp: "52°")

let WeeklyRowView3 = WeeklyRowView(day: "Wed",
                      img: "cloud.rain.fill",
                      low_temp: "33°",
                      high_temp: "45°")

let WeeklyRowView4 = WeeklyRowView(day: "Thu",
                      img: "sun.max.fill",
                      low_temp: "28°",
                      high_temp: "32°")

let WeeklyRowView5 = WeeklyRowView(day: "Fri",
                      img: "cloud.fill",
                      low_temp: "25°",
                      high_temp: "33°")

let WeeklyRowView6 = WeeklyRowView(day: "Sat",
                      img: "snowflake",
                      low_temp: "23°",
                      high_temp: "30°")

let WeeklyRowView7 = WeeklyRowView(day: "Sun",
                      img: "snowflake",
                      low_temp: "21°",
                      high_temp: "29°")

let WeeklyRowView8 = WeeklyRowView(day: "Mon",
                      img: "sun.max.fill",
                      low_temp: "30°",
                      high_temp: "43°")


struct WeeklyForecastView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 6){
            
            VStack(alignment: .leading, spacing: 10){
                HStack(spacing: 5){
                    Image(systemName: "calendar")
                        .foregroundColor(.white.opacity(0.8))
                    Text("10-DAY FORECAST")
                        .font(.system(size: 15, weight: .regular))
                        .foregroundColor(.white.opacity(0.8))
                }
                WeeklyRowView0
                WeeklyRowView1
                WeeklyRowView2
                WeeklyRowView3
                WeeklyRowView4
                WeeklyRowView5
                WeeklyRowView6
                WeeklyRowView7
                WeeklyRowView8
            }
            .padding()
            .background(.white.opacity(0.2), in: RoundedRectangle(cornerRadius: 10, style: .continuous))
        }
        .padding()
    }
}
