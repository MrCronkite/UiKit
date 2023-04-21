//
//  BaseView.swift
//  workoutApp
//
//  Created by admin1 on 12.04.23.
//

import UIKit

class BaseView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        configureViews()
        constraintViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

@objc extension BaseView {
    
    func constraintViews() {}
    func configureViews() {}
    func setupViews() {}
}
