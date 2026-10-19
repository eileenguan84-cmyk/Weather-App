//
//  EditSheet.swift
//  Reminder
//
//  Created by Eileen Guan on 2026/10/19.
//

import SwiftUI

struct EditSheet: View {
    @Binding var title: String
    @Binding var selectedColor: Color
    
    var body: some View {
        VStack(spacing: 20) {
            HStack{
                Image(systemName: "list.bullet.circle.fill")
                    .font(.system(size: 20))
                
                TextField("List name", text: $title)
                    .font(.system(size: 20))
            }
            
            ColorChooser(selectedColor: $selectedColor)
            
            Spacer()
        }
        .foregroundStyle(selectedColor)
        .padding()
    }
}

#Preview {
    @Previewable @State var selectedColor: Color = .red
    @Previewable @State var title: String = "List"
    EditSheet(title: $title, selectedColor: $selectedColor)
        .preferredColorScheme(.dark)
}
