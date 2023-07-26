//
//  ViewController.swift
//  еуые
//
//  Created by admin1 on 24.07.23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var firstView: CustomView!
    
    @IBOutlet private weak var secondView: CustomView!
    
    @IBOutlet private weak var thirdView: CustomView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstView.configureLabel(title: "hello")
        self.secondView.configureLabel(title: "Vlad")
        self.thirdView.configureLabel(title: "Shimchenko")
    }


}

