//
//  Resouces.swift
//  workoutApp
//
//  Created by admin1 on 8.03.23.
//

import UIKit

enum Resouces {
    enum Colors {
        static var active = UIColor(hex: "#437BFE")
        static var inactive = UIColor(hex: "#929DA%")
        
        static var separator = UIColor(hex: "#EBECEF")
    }
    
    
    enum Strings {
        enum TabBar {
            static var overview = "Overview"
            static var session = "Session"
            static var progress = "Progress"
            static var settings = "Settings"
        }
    }
    
    enum Images {
        enum TabBar {
            static var overview = UIImage(named: "overview_tab")
            static var session = UIImage(named: "session_tab")
            static var progress = UIImage(named: "progress_tab")
            static var settings = UIImage(named: "settings_tab")
        }
    }
}
