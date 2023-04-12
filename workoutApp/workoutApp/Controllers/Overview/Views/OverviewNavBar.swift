//
//  OverviewNavBar.swift
//  workoutApp
//
//  Created by admin1 on 12.04.23.
//

import UIKit

final class OverviewNavBar: BaseView {
    
    private let titleLable = UILabel()
    private let addButton = UIButton()
    private let allWorkoutsButton = SecondaryButton()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        addBottomSeparator(with: Resouces.Colors.separator, heigh: 1)
    }
    
    func addAdditionAction(_ action: Selector, with target: Any?) {
        addButton.addTarget(target, action: action, for: .touchUpInside)
    }
    
    func addAllWorkoutsAction(_ action: Selector, with target: Any?) {
        allWorkoutsButton.addTarget(target, action: action, for: .touchUpInside)
    }
}

extension OverviewNavBar {
    override func addViews() {
        super.addViews()
        
        addSubview(allWorkoutsButton)
        addSubview(titleLable)
        addSubview(addButton)
    }
    
    override func layoutView() {
        super.layoutView()
        
        NSLayoutConstraint.activate([
            addButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8),
            addButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            addButton.heightAnchor.constraint(equalToConstant: 28),
            addButton.widthAnchor.constraint(equalToConstant: 28),
            
            allWorkoutsButton.topAnchor.constraint(equalTo: addButton.topAnchor),
            allWorkoutsButton.trailingAnchor.constraint(equalTo: addButton.leadingAnchor, constant: -15),
            allWorkoutsButton.heightAnchor.constraint(equalToConstant: 28),
            allWorkoutsButton.widthAnchor.constraint(equalToConstant: 130),
            
            titleLable.centerYAnchor.constraint(equalTo: allWorkoutsButton.centerYAnchor),
            titleLable.trailingAnchor.constraint(equalTo: allWorkoutsButton.leadingAnchor),
            titleLable.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15)
        ])
    }
    
    override func configure() {
        super.configure()
        backgroundColor = .white
        
        titleLable.translatesAutoresizingMaskIntoConstraints = false
        titleLable.text = Resouces.Strings.NavBar.overview
        titleLable.textColor = Resouces.Colors.titleGray
        titleLable.font = Resouces.Fonts.helveticaRegular(witf: 22)
        
        allWorkoutsButton.translatesAutoresizingMaskIntoConstraints = false
        allWorkoutsButton.setTitle(Resouces.Strings.Overview.allWorkoutsButton)
        
        addButton.translatesAutoresizingMaskIntoConstraints = false
        addButton.setImage(Resouces.Images.Common.add, for: .normal)
        
    }
}

