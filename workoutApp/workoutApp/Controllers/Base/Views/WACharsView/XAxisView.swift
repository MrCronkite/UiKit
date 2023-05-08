//
//  XAxisView.swift
//  workoutApp
//
//  Created by admin1 on 8.05.23.
//

import UIKit

final class XAxisView: BaseView {
    
    private let stackView: UIStackView = {
        let view = UIStackView()
        view.distribution = .equalSpacing
        return view
    }()
    
    func configure(with data: [WAChartsView.Data]) {
        stackView.arrangedSubviews.forEach {
            $0.removeFromSuperview()
        }
        
        data.forEach {
            let lable = UILabel()
            lable.font = R.Fonts.helvelticaRegular(with: 9)
            lable.textColor = R.Colors.inactive
            lable.text = $0.title.uppercased()
            lable.textAlignment = .center
            stackView.addArrangedSubview(lable)
        }
    }
}

extension XAxisView {
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
