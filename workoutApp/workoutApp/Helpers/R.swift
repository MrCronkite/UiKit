//
//  Resouces.swift
//  workoutApp
//
//  Created by admin1 on 8.03.23.
//

import UIKit

enum R {
    enum Colors {
        static let active = UIColor(hex: "#437BFE")
        static let inactive = UIColor(hex: "#929DA%")
        
        static let separator = UIColor(hex: "#EBECEF")
        static let titleGray = UIColor(hex: "#545C77")
        static let backgraund = UIColor(hex: "#F8F9F9")
        static let secondary = UIColor(hex: "#F0F3FF")
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
            static let overview = "Today"
            static let session = "High Intensity Cardio"
            static let progress = "Workout Progress"
            static let settings = "Settings"
        }
        
        enum Overview {
            static let allWorkoutsButton = "All Workouts"
        }
        
        enum Session {
            static let navBarLeft = "Pause"
            static let navBarRight = "Finish"
        }
        
        enum Progress {
            static let navBarLeft = "Export"
            static let navBarRight = "Details"
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
            static let downArrow = UIImage(named: "down_arrow")
            static let add = UIImage(named: "add_button")
        }
    }
    
    enum Fonts {
        static func helveticaRegular(witf size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
}
