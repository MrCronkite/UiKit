//
//  TabBarController.swift
//  еуые
//
//  Created by admin1 on 27.07.23.
//

import UIKit

enum Tabs: Int, CaseIterable {
    case members
    case places
    case settings
}

final class TabBarController: UITabBarController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        configureAppearance()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        configureAppearance()
    }
}

extension TabBarController {
    private func configureAppearance() {
        tabBar.backgroundColor = .white
        tabBar.layer.borderWidth = 0.3
        tabBar.layer.borderColor = UIColor.gray.cgColor
        
        let controllers: [UINavigationController] = Tabs.allCases.map { tab in
            let controller = UINavigationController(rootViewController: getController(for: tab))
            controller.tabBarItem = UITabBarItem(title: "Hello",
                                                 image: UIImage(systemName: "heart.fill"),
                                                 tag: tab.rawValue)
            return controller
        }
        
        setViewControllers(controllers, animated: false)
    }
    
    private func getController(for tab: Tabs) -> UIViewController {
        switch tab {
        case .members: return MemberViewController()
        case .places: return PlacesViewController()
        case .settings: return SettingsViewController()
        }
    }
}
