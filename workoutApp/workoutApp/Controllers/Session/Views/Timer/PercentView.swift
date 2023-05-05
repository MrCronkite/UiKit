//
//  PercentView.swift
//  workoutApp
//
//  Created by admin1 on 5.05.23.
//

import UIKit

extension TimerView {
    final class PercentView: BaseView {
        
        private let stackView: UIStackView = {
            let view = UIStackView()
            view.axis = .vertical
            view.distribution = .fillProportionally
            view.spacing = 5
            return view
        }()
        
        private let percentLable: UILabel = {
            let lable = UILabel()
            lable.font = R.Fonts.helveticaRegular(witf: 23)
            lable.textColor = R.Colors.titleGray
            lable.textAlignment = .center
            return lable
        }()
        
        private let subTitleLabel: UILabel = {
            let lable = UILabel()
            lable.font = R.Fonts.helveticaRegular(witf: 10)
            lable.textColor = R.Colors.inactive
            lable.textAlignment = .center
            return lable
        }()
        
        override func setupViews() {
            super.setupViews()
            
            addView(stackView)
            stackView.addArrangedSubview(percentLable)
            stackView.addArrangedSubview(subTitleLabel)
        }
        
        override func constraintViews() {
            super.constraintViews()
            
            NSLayoutConstraint.activate([
                stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
                stackView.topAnchor.constraint(equalTo: topAnchor),
                stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
                stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
            ])
        }
        
        func configure(with value: Int, title: String) {
            subTitleLabel.text = title
            percentLable.text = "\(value)%"
        }
    }
}
