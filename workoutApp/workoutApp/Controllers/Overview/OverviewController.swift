//
//  OverviewController.swift
//  workoutApp
//
//  Created by admin1 on 7.03.23.
//

import UIKit

class OverviewController: BaseController {
    
    private let navBar = OverviewNavBar()
    private let allWorkoutsButton = SecondaryButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.tabBarItem.title = Resouces.Strings.TabBar.overview
    }
}

extension OverviewController {
    override func addViews() {
        super.addViews()
        view.addView(navBar)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            navBar.topAnchor.constraint(equalTo: view.topAnchor),
            navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    override func configure() {
        super.configure()
        navigationController?.navigationBar.isHidden = true
    }
}

