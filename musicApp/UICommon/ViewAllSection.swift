//
//  ViewAllSection.swift
//  musicApp
//
//  Created by Yıldız Aydın on 30.12.2024.
//

import SwiftUI

struct ViewAllSection: View {
  
    @State var title: String = "Title"
    @State var button: String = "View All"
    var didTap: (() -> ())?
    
    var body: some View {
        HStack{
            Text(title)
                .font(.customfont(.medium, fontSize: 13))
                .foregroundColor(.primaryText80)
                .frame(minWidth: 0, maxWidth: .infinity,
                       alignment: .leading)
            
            Button {
                
            } label: {
                Text(button)
                    .font(.customfont(.regular, fontSize: 11))
                    .foregroundColor(Color.org)
            }
            
        
            
        }
    }
}

#Preview {
    ViewAllSection()
}
