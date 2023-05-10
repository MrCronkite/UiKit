//
//  TabBarController.swift
//  workoutApp
//
//  Created by admin1 on 7.03.23.
//

import UIKit

enum Tabs: Int, CaseIterable {
    case overview
    case session
    case progress
    case settings
}

final class TabBarController: UITabBarController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        configure()
        swichTo(tab: .overview)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func swichTo(tab: Tabs) {
        selectedIndex = tab.rawValue
    }
    
    
    private func configure() {
        tabBar.tintColor = R.Colors.active
        tabBar.barTintColor = R.Colors.inactive
        tabBar.backgroundColor = .white
        tabBar.layer.borderWidth = 1
        tabBar.layer.borderColor = R.Colors.separator.cgColor
        tabBar.layer.masksToBounds = true
        
        let controllers: [NavBarController] = Tabs.allCases.map { tab in
            let controller = NavBarController(rootViewController: getController(for: tab))
            controller.tabBarItem = UITabBarItem(title: R.Strings.TabBar.title(for: tab),
                                                 image: R.Images.TabBar.icon(for: tab),
                                                 tag: tab.rawValue)
            return controller
        }
        
        setViewControllers(controllers, animated: false)
    }
    
    private func getController(for tab: Tabs) -> BaseController {
        switch tab {
        case .settings: return SettingsController()
        case .progress: return ProgressController()
        case .session: return SessionController()
        case .overview: return OverviewController()
        }
    }
}
