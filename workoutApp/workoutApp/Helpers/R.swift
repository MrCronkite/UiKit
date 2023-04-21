//
//  Resouces.swift
//  workoutApp
//
//  Created by admin1 on 8.03.23.
//

import UIKit

enum R {
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
            static func title(for tab: Tabs) -> String {
                switch tab {
                case .overview: return "Overview"
                case .session: return "Session"
                case .progress: return "Progress"
                case .settings: return "Settings"
                }
            }
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
        
        enum Session {
            static var navBarLeft = "Pause"
            static var navBarRight = "Finish"
        }
        
        enum Progress {
            static var navBarLeft = "Export"
            static var navBarRight = "Details"
        }
        
        enum Settings {}
    }
    
    enum Images {
        enum TabBar {
            static func icon(for tab: Tabs) -> UIImage? {
                switch tab {
                case .overview: return UIImage(named: "overview_tab")
                case .session: return UIImage(named: "session_tab")
                case .settings: return UIImage(named: "settings_tab")
                case .progress: return UIImage(named: "progress_tab")
                }
            }
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
