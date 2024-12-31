//
//  MainTabView.swift
//  musicApp
//
//  Created by Yıldız Aydın on 30.12.2024.
//

import SwiftUI

struct MainTabView: View {
  
    @StateObject var mainVM = MainViewModel.share

    
    var body: some View {
        ZStack {
            
            if (mainVM.selecTab == 0) {
                
                HomeView()
                
            } else if (mainVM.selecTab == 1) {
                
                VStack {
                    Spacer()
                    Text("Songs")
                        .foregroundColor(.primaryText)
                    Spacer()
                }
                .frame(width: .screenWidth, height: .screenHeight)
                .background(Color.bg)
            } else if (mainVM.selecTab == 2) {
                
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
                              iconUnfocus: "home_tab_un", isSelect: mainVM.selecTab == 0) {
                        mainVM.selecTab = 0
                    }
                    
                    Spacer()
                    
                    TabButton(title: "Songs", icon: "songs_tab",
                              iconUnfocus: "songs_tab_un", isSelect: mainVM.selecTab == 1) {
                        mainVM.selecTab = 1
                    }
                    
                    Spacer()
                    
                    TabButton(title: "Settings", icon: "setting_tab",
                              iconUnfocus: "setting_tab_un", isSelect: mainVM.selecTab == 2) {
                        mainVM.selecTab = 2
                    }
                    
                    Spacer()
                }
                              .padding(.top, 10)
                              .padding(.bottom, .bottomInsets)
                              .background(Color.bg)
                              .shadow(radius: 5)
                          }
                          
               SideMenuView(isShowing: $mainVM.isShowMenu)
                          
                      }
                      .frame(width: .screenWidth, height: .screenHeight)
                      .background(Color.bg)
                      .navigationTitle("")
                      .navigationBarBackButtonHidden()
                      .navigationBarHidden(true)
                      .ignoresSafeArea()
                  }
              }

              struct MainTabView_Previews: PreviewProvider {
                  static var previews: some View {
                      MainTabView()
                  }
              }
