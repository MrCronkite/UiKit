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
    
    let button: UIButton = {
       let button = UIButton()
        button.frame = CGRect(x: 170, y: 160, width: 70, height: 20)
        button.setTitle("Registr", for: .normal)
        button.setTitleColor(.yellow, for: .normal)
        button.backgroundColor = .systemGreen
      return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(textField)
        
        button.addTarget(self, action: #selector(sendData), for: .touchUpInside)
        view.addSubview(button)
    }
   

    
    @objc func sendData(){
        print(textField.text ?? "nil")
    }
}

