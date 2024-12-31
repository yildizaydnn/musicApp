//
//  musicAppApp.swift
//  musicApp
//
//  Created by Yıldız Aydın on 30.12.2024.
//

import SwiftUI

@main
struct musicAppApp: App {
    var body: some Scene {
        WindowGroup {
         
            NavigationView {
                MainTabView()

            }
            .navigationViewStyle(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Navigation View Style@*/DefaultNavigationViewStyle()/*@END_MENU_TOKEN@*/)
        }
    }
}
