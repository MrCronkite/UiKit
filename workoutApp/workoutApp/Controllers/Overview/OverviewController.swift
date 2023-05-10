//
//  OverviewController.swift
//  workoutApp
//
//  Created by admin1 on 7.03.23.
//

import UIKit

class OverviewController: BaseController {
    
    private let navBar = OverviewNavBar()
    
    private let header = SectionHeaderView()
}

extension OverviewController {
    override func setupViews() {
        super.setupViews()
        
        view.addView(navBar)
        view.addView(header)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            navBar.topAnchor.constraint(equalTo: view.topAnchor),
            navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            header.topAnchor.constraint(equalTo: navBar.bottomAnchor),
            header.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            header.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            header.heightAnchor.constraint(equalToConstant: 32)
        ])
    }
    
    override func configureView() {
        super.configureView()
        navigationController?.navigationBar.isHidden = true
        
        let dateFormater = DateFormatter()
        dateFormater.dateFormat = "EEEE, MMMM dd"
        header.configure(with: dateFormater.string(from: Date()))
    }
}

