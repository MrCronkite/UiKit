//
//  WeekDayView.swift
//  workoutApp
//
//  Created by admin1 on 12.04.23.
//

import UIKit

extension WeekView {
    final class WeekDayView: BaseView {
        
        private let nameLabel = UILabel()
        private let dateLabel = UILabel()
        private let stackView = UIStackView()
        
        func configure(with index: Int, and name: String) {
            let startOfWeek = Date().startOfWeek
            let currentDay = startOfWeek.agoForward(to: index)
            let day = Calendar.current.component(.day, from: currentDay)
            
            let isTooday = currentDay.stripTime() == Date().stripTime()
            
            backgroundColor = isTooday ? Resouces.Colors.active : Resouces.Colors.backgraund
            
            nameLabel.text = name.uppercased()
            nameLabel.textColor = isTooday ? .white : Resouces.Colors.inactive
            
            dateLabel.textColor = isTooday ? .white : Resouces.Colors.inactive
            dateLabel.text = "\(day)"
        }
        
    }
}

extension WeekView.WeekDayView {
    override func addViews() {
        super.addViews()
        
        addView(stackView)
        
        stackView.addArrangedSubview(nameLabel)
        stackView.addArrangedSubview(dateLabel)
    }
    
    override func layoutView() {
        super.layoutView()
        NSLayoutConstraint.activate([
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    override func configureViews() {
        super.configureViews()
        layer.cornerRadius = 5
        layer.masksToBounds = true
        
        nameLabel.font = Resouces.Fonts.helveticaRegular(witf: 9)
        nameLabel.textAlignment = .center
        
        dateLabel.font = Resouces.Fonts.helveticaRegular(witf: 15)
        dateLabel.textAlignment = .center
        
        stackView.spacing = 7
        stackView.axis = .vertical
    }
}
