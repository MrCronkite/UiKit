//
//  BaseController.swift
//  workoutApp
//
//  Created by admin1 on 10.04.23.
//

import UIKit

class BaseController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
}

@objc extension BaseController {
    
    func addViews() {}
    func layoutViews() {}
    func configure() {
        view.backgroundColor = Resouces.Colors.backgraund
    }
    
}
