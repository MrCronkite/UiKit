//
//  YAxisView.swift
//  workoutApp
//
//  Created by admin1 on 8.05.23.
//

import UIKit

final class YAxisView: BaseView {
    
    private let stackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.distribution = .equalSpacing
        return view
    }()
    
    func configure(with data: [WAChartsView.Data]) {
        stackView.arrangedSubviews.forEach {
            $0.removeFromSuperview()
        }
        
        (0...9).reversed().forEach {
            let lable = UILabel()
            lable.font = R.Fonts.helvelticaRegular(with: 9)
            lable.textColor = R.Colors.inactive
            lable.textAlignment = .right
            lable.text = "\($0 * 10)" // TODO: - Remeake
            
            stackView.addArrangedSubview(lable)
        }
    }
}

extension YAxisView {
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
}

