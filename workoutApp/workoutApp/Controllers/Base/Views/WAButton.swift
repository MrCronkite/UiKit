//
//  WAButton.swift
//  workoutApp
//
//  Created by admin1 on 11.04.23.
//

import UIKit

public enum WAButtonType {
    case primery
    case secondary
}

final class WAButton: UIButton {
    
    private var type: WAButtonType = .primery
    
    private let lable: UILabel = {
        let lable = UILabel()
        lable.textAlignment = .center
        return lable
    }()
    
    private let iconView: UIImageView = {
        let view = UIImageView()
        view.image = R.Images.Common.downArrow?.withRenderingMode(.alwaysOriginal)
        return view
    }()
    
    init(with type: WAButtonType) {
        super.init(frame: .zero)
        self.type = type
        
        setupViews()
        constraintViews()
        configureViews()
    }
    
    required init?(coder: NSCoder) {
        super.init(frame: .zero)
        
        setupViews()
        constraintViews()
        configureViews()
    }
    
    func setTitle(_ title: String?) {
        lable.text = title
    }
}

private extension WAButton {
    func setupViews() {
        addView(lable)
        addView(iconView)
    }
    
    func constraintViews() {
        var horisontalOffset: CGFloat {
            switch type {
            case .primery: return 0
            case .secondary: return 10
            }
        }
        NSLayoutConstraint.activate([
            iconView.centerYAnchor.constraint(equalTo: centerYAnchor),
            iconView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -horisontalOffset),
            iconView.heightAnchor.constraint(equalToConstant: 5),
            iconView.widthAnchor.constraint(equalToConstant: 10),
            
            lable.centerYAnchor.constraint(equalTo: centerYAnchor),
            lable.trailingAnchor.constraint(equalTo: iconView.leadingAnchor, constant: -10),
            lable.leadingAnchor.constraint(equalTo: leadingAnchor, constant: horisontalOffset * 2)
        ])
    }
    
    func configureViews() {
        switch type {
        case .primery:
            lable.textColor = R.Colors.inactive
            lable.font = R.Fonts.helveticaRegular(witf: 13)
            iconView.tintColor = R.Colors.inactive
        case .secondary:
            backgroundColor = R.Colors.secondary
            layer.cornerRadius = 14
            lable.textColor = R.Colors.active
            lable.font = R.Fonts.helveticaRegular(witf: 15)
            lable.textColor = R.Colors.active
        }
        
        makeAnimationButton(self)
    }
}
