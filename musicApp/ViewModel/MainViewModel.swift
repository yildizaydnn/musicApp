//
//  MainViewModel.swift
//  musicApp
//
//  Created by Yıldız Aydın on 31.12.2024.
//

import SwiftUI

class MainViewModel: ObservableObject {
    static var share: MainViewModel = MainViewModel()
    
    
    @Published var selecTab: Int = 0
    @Published var isShowMenu: Bool = false
    
    
}
    
  
