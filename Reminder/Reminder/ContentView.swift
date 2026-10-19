//
//  ContentView.swift
//  Reminder
//
//  Created by Eileen Guan on 2026/10/19.
//

import SwiftUI

struct ContentView: View {
    @State private var isEditing: Bool = false
    
    @State private var page: RemindersPage = RemindersPage(
        title: "My Reminders",
        items: [
            Reminder(title: "Music146 Essay"),
            Reminder(title: "IOSBootcamp"),
            Reminder(title: "Math233 HW")
        ],
        color: .purple)
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack(spacing:50){
                Text("School")
                    .padding()
                    .font(.system(size: 30))
                    .bold()
                    .foregroundStyle(page.color)
                
                Spacer()
                
                Button{
                    isEditing = true
                } label: {
                    Image(systemName: "info.circle")
                        .padding()
                        .foregroundStyle(page.color)
                }
            }
            
            List{
                ForEach($page.items) { $reminder in
                    HStack{
                        Button{
                            if reminder.isCompleted == true{
                                reminder.isCompleted = false
                            }
                            else {
                                reminder.isCompleted = true
                            }
                        } label: {
                            if reminder.isCompleted{
                                Image(systemName: "checkmark.circle.fill")
                                    .font(.system(size: 20))
                                    .foregroundStyle(page.color)
                            }
                            else {
                                Image(systemName: "circle")
                                    .font(.system(size: 20))
                                    .foregroundStyle(page.color)
                            }
                        }
                        
                        TextField("Reminder", text: $reminder.title)}
                }
                
                .onDelete { indexSet in
                    page.items.remove(atOffsets: indexSet)
                }
            }
            .listStyle(.plain)
        }
        HStack{
            Spacer()
            Button{
                page.items.append(Reminder(title: ""))
            } label: {
                Image(systemName: "plus.circle.fill")
                    .font(.system(size: 30))
                    .foregroundStyle(.purple)
                    .padding()
            }
        }
        
        .sheet(isPresented: $isEditing) {
            EditSheet(title: $page.title, selectedColor: $page.color)
        }
    }
}
    
#Preview {
    ContentView()
    }

