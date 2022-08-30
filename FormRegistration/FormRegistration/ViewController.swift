//
//  ViewController.swift
//  FormRegistration
//
//  Created by admin1 on 30.08.22.
//

import UIKit

class ViewController: UIViewController {
    
    let textField: UITextField = {
       let textF = UITextField()
        textF.frame = CGRect(x: 120, y: 100, width: 200, height: 30)
        textF.borderStyle = .roundedRect
        textF.placeholder = "Password"
        return textF
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.center = textField.center
        view.addSubview(textField)
    }
   

}

