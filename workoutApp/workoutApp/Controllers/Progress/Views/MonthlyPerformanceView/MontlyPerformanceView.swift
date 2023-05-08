//
//  MontlyPerformanceView.swift
//  workoutApp
//
//  Created by admin1 on 8.05.23.
//

import UIKit
 
final class MontlyPerformanceView: WABaseInfoView {
    
    private let chartsView = WAChartsView()
    
    func configure(with items: [WAChartsView.Data]) {
        chartsView.configure(with: items)
    }
}

extension MontlyPerformanceView {
    override func setupViews() {
        super.setupViews()
        
        addView(chartsView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            chartsView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
            chartsView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
            chartsView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            chartsView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15)
        ])
    }
    
    override func configureViews() {
        super.configureViews()
    }
}
