//
//  TabBarController.swift
//  workoutApp
//
//  Created by admin1 on 7.03.23.
//

import UIKit

enum Tabs: Int {
    case overview
    case session
    case progress
    case settings
}

final class TabBarController: UITabBarController {
    
    
    private func configure() {
        tabBar.tintColor = Resouces.Colors.active
        tabBar.barTintColor = Resouces.Colors.inactive
        tabBar.backgroundColor = .white
        
        tabBar.layer.borderWidth = 1
        tabBar.layer.borderColor = Resouces.Colors.separator?.cgColor
        tabBar.layer.masksToBounds = true
    }
}
