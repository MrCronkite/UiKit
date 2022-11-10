//
//  ViewController.swift
//  FormRegistration
//
//  Created by admin1 on 30.08.22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
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
        textField.delegate = self
        view.addSubview(textField)
        
        button.addTarget(self, action: #selector(sendData), for: .touchUpInside)
        view.addSubview(button)
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("begin")
    }
   
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("end")
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        print("\(string) , \(range)")
        return true
    }
    
    @objc func sendData(){
        print(textField.text ?? "nil")
    }
}

