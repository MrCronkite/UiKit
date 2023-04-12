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
        static var titleGray = UIColor(hex: "#545C77")
        static var backgraund = UIColor(hex: "#F8F9F9")
        static var secondary = UIColor(hex: "#F0F3FF")
    }
    
    
    enum Strings {
        enum TabBar {
            static var overview = "Overview"
            static var session = "Session"
            static var progress = "Progress"
            static var settings = "Settings"
        }
        
        enum NavBar {
            static var overview = "Today"
            static var session = "High Intensity Cardio"
            static var progress = "Workout Progress"
            static var settings = "Settings"
        }
        
        enum Overview {
            static var allWorkoutsButton = "All Workpots"
        }
    }
    
    enum Images {
        enum TabBar {
            static var overview = UIImage(named: "overview_tab")
            static var session = UIImage(named: "session_tab")
            static var progress = UIImage(named: "progress_tab")
            static var settings = UIImage(named: "settings_tab")
        }
        
        enum Common {
            static var downArrow = UIImage(named: "down_arrow")
            static var add = UIImage(named: "add_button")
        }
    }
    
    enum Fonts {
        static func helveticaRegular(witf size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
}
