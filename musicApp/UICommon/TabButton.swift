//
//  TabButton.swift
//  musicApp
//
//  Created by Yıldız Aydın on 30.12.2024.
//

import SwiftUI

struct TabButton: View {
    @State var title: String = "Home"
    @State var icon: String = "home_tab_un"
    @State var iconUnfocus:  String = "home_tab"
   
    var isSelect: Bool = false
    var didTap: (() -> ())?
    
    var body: some View {
        Button {
            didTap?()
        } label: {
            VStack{
                Image(isSelect ? icon : iconUnfocus)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
  
                 Text(title)
                    .font(.customfont(.regular ,fontSize: 12))
                    .foregroundColor(isSelect  ? .focus : .unfocused)
            }
            
        }

    }
}

#Preview {
    TabButton()
}
