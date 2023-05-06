//
//  StatsView.swift
//  workoutApp
//
//  Created by admin1 on 6.05.23.
//

import UIKit

final class StatsView: WABaseInfoView {
    
    private let itemView = StatsItemView()
    
    override func setupViews() {
        super.setupViews()
        
        addView(itemView)
        itemView.configure(with: StatsItemView.StatsItem(imageName: R.Images.Common.downArrow,
                                                         value: "155 bpm",
                                                         title: R.Strings.Session.heartRate.uppercased()))
        
        NSLayoutConstraint.activate([
            itemView.topAnchor.constraint(equalTo: topAnchor, constant: 50),
            itemView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15)
        ])
    }
    
}
