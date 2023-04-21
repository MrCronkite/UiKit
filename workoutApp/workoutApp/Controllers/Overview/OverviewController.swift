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
        navigationController?.tabBarItem.title = R.Strings.TabBar.title(for: .overview)
    }
}

extension OverviewController {
    override func setupViews() {
        super.setupViews()
        view.addView(navBar)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            navBar.topAnchor.constraint(equalTo: view.topAnchor),
            navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    override func configureView() {
        super.configureView()
        navigationController?.navigationBar.isHidden = true
    }
}

