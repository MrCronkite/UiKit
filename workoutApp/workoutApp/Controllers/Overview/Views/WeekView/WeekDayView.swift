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
            
            backgroundColor = isTooday ? R.Colors.active : R.Colors.backgraund
            
            nameLabel.text = name.uppercased()
            nameLabel.textColor = isTooday ? .white : R.Colors.inactive
            
            dateLabel.textColor = isTooday ? .white : R.Colors.inactive
            dateLabel.text = "\(day)"
        }
        
    }
}

extension WeekView.WeekDayView {
    override func setupViews() {
        super.setupViews()
        
        addView(stackView)
        
        stackView.addArrangedSubview(nameLabel)
        stackView.addArrangedSubview(dateLabel)
    }
    
    override func constraintViews() {
        super.constraintViews()
        NSLayoutConstraint.activate([
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    override func configureViews() {
        super.configureViews()
        layer.cornerRadius = 5
        layer.masksToBounds = true
        
        nameLabel.font = R.Fonts.helvelticaRegular(with: 9)
        nameLabel.textAlignment = .center
        
        dateLabel.font = R.Fonts.helvelticaRegular(with: 15)
        dateLabel.textAlignment = .center
        
        stackView.spacing = 7
        stackView.axis = .vertical
    }
}
