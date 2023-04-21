//
//  BaseController.swift
//  workoutApp
//
//  Created by admin1 on 10.04.23.
//

import UIKit

enum NavBarPosititon {
    case left
    case right
}

class BaseController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        constraintViews()
        configureView()
    }
}

@objc extension BaseController {
    
    func setupViews() {}
    
    func constraintViews() {}
    
    func configureView() {
        view.backgroundColor = R.Colors.backgraund
    }
    
    func navBarLeftButtonHandler() {
        print("Left")
    }
    
    func navBarRightButtonHandler() {
        print("Right")
    }
    
}

extension BaseController {
    func addNavBarButton(at position: NavBarPosititon, with title: String) {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(R.Colors.active, for: .normal)
        button.setTitleColor(R.Colors.inactive, for: .disabled)
        button.titleLabel?.font = R.Fonts.helveticaRegular(witf: 17)
        
        switch position {
        case .left:
            button.addTarget(self, action: #selector(navBarLeftButtonHandler), for: .touchUpInside)
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        case .right:
            button.addTarget(self, action: #selector(navBarRightButtonHandler), for: .touchUpInside)
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
        }
    }
}
