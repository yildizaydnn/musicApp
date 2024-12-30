//
//  MainTabView.swift
//  musicApp
//
//  Created by Yıldız Aydın on 30.12.2024.
//

import SwiftUI

struct MainTabView: View {
    
    @State var selecTab: Int = 0
    
    var body: some View {
        ZStack {
            
            if (selecTab == 0) {
               
                VStack {
                        Spacer()
                        Text("Home")
                            .foregroundColor(.primaryText)
                        Spacer()
                    }
                    .frame(width: .screenWidth, height: .screenHeight)
                    .background(Color.bg)
                
            } else if (selecTab == 1) {
               
                VStack {
                    Spacer()
                    Text("Songs")
                        .foregroundColor(.primaryText)
                    Spacer()
                }
                .frame(width: .screenWidth, height: .screenHeight)
                .background(Color.bg)
            } else if (selecTab == 2) {
               
                VStack {
                    Spacer()
                    Text("Settings")
                        .foregroundColor(.primaryText)
                    Spacer()
                }
                .frame(width: .screenWidth, height: .screenHeight)
                .background(Color.bg)
            }
            
            VStack {
                Spacer()
                
                HStack {
                    Spacer()
                    
                    TabButton(title: "Home", icon: "home_tab",
                              iconUnfocus: "home_tab_un", isSelect: selecTab == 0) {
                        selecTab = 0
                    }
                    
                    Spacer()
                    
                    TabButton(title: "Songs", icon: "songs_tab",
                              iconUnfocus: "songs_tab_un", isSelect: selecTab == 1) {
                        selecTab = 1
                    }
                    
                    Spacer()
                    
                    TabButton(title: "Settings", icon: "setting_tab",
                              iconUnfocus: "setting_tab_un", isSelect: selecTab == 2) {
                        selecTab = 2
                    }
                    
                    Spacer()
                }
                .padding(.top, 10)  // Adjust the bottom padding
                .padding(.bottom, .bottomInsets)
                .background(Color.bg)
                .shadow(radius: 2)
            }
            .navigationTitle("")
            .navigationBarBackButtonHidden()
            .navigationBarHidden(true)
            .ignoresSafeArea()
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
