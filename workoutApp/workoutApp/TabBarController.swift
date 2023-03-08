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
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure() {
        tabBar.tintColor = Resouces.Colors.active
        tabBar.barTintColor = Resouces.Colors.inactive
        tabBar.backgroundColor = .white
        
        tabBar.layer.borderWidth = 1
        tabBar.layer.borderColor = Resouces.Colors.separator?.cgColor
        tabBar.layer.masksToBounds = true
        
        let overviewController = UIViewController()
        let sessionController = UIViewController()
        let progressController = UIViewController()
        let settingsController = UIViewController()
        
        let overviewNavigation = UINavigationController(rootViewController: overviewController)
        let sessionNavigation = UINavigationController(rootViewController: sessionController)
        let progressNavigation = UINavigationController(rootViewController: progressController)
        let settingsNavigation = UINavigationController(rootViewController: settingsController)
        
        settingsNavigation.tabBarItem = UITabBarItem(title: Resouces.Strings.TabBar.settings,
                                                     image: Resouces.Images.TabBar.settings,
                                                     tag: Tabs.settings.rawValue)
        
        overviewNavigation.tabBarItem = UITabBarItem(title: Resouces.Strings.TabBar.overview,
                                                     image: Resouces.Images.TabBar.overview,
                                                     tag: Tabs.overview.rawValue)
        
        sessionNavigation.tabBarItem = UITabBarItem(title: Resouces.Strings.TabBar.session,
                                                     image: Resouces.Images.TabBar.session,
                                                     tag: Tabs.session.rawValue)
        
        progressNavigation.tabBarItem = UITabBarItem(title: Resouces.Strings.TabBar.progress,
                                                     image: Resouces.Images.TabBar.progress,
                                                     tag: Tabs.progress.rawValue)
        
        setViewControllers([
            settingsNavigation,
            overviewNavigation,
            sessionNavigation,
            progressNavigation
        ], animated: false)
    }
}
