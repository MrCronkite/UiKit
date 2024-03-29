//
//  WeekView.swift
//  workoutApp
//
//  Created by admin1 on 12.04.23.
//

import UIKit

final class WeekView: BaseView {
    
    private let calendar = Calendar.current
    
    private var stackView = UIStackView()
    
}

extension WeekView {
    override func setupViews() {
        super.setupViews()
        
        addView(stackView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    override func configureViews() {
        super.configureViews()
        
        stackView.spacing = 7
        stackView.distribution = .fillEqually
        
        var weekDays = Date.calendar.shortStandaloneWeekdaySymbols
        
        if Date.calendar.firstWeekday == 1 {
            let sunDay = weekDays.remove(at: 0)
            weekDays.append(sunDay)
        }
        
        weekDays.enumerated().forEach { index, name in
            let view = WeekDayView()
            view.configure(with: index, and: name)
            stackView.addArrangedSubview(view)
        }
    }
}
