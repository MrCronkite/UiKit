//
//  ViewController.swift
//  UiAlert
//
//  Created by admin1 on 10.07.22.
//

import UIKit

class ViewController: UIViewController {
    
    let button = UIButton()
    let label = UILabel()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.button.frame = CGRect(x: 0, y: 0, width: 200, height: 30)
        self.button.center = self.view.center
        self.button.setTitle("click", for: .normal)
        self.button.setTitleColor(.purple, for: .normal)
        self.button.layer.cornerRadius = 5
        self.button.backgroundColor  = .brown
        self.button.addTarget(self, action: #selector(buttonClick(sender:)), for: .touchUpInside)
        self.view.addSubview(self.button)
        
        self.label.frame = CGRect(x: 100, y: 100, width: 200, height: 200)
        self.label.text = "hello"
        self.label.textColor = .green
        self.view.addSubview(label)
        
    }
    
    @objc func buttonClick(sender: UIButton){
        self.alertAction(title: "привет", message: "введите текст", style: .alert)
        
    }
    
    func alertAction(title: String, message: String, style: UIAlertController.Style){
        let alert = UIAlertController(title: title, message: message, preferredStyle: style)
        let alertAction = UIAlertAction(title: "ok", style: .default) {(action) in
            let text = alert.textFields?.first
            self.label.text? += (text?.text)!}
        alert.addTextField{(textField) in textField.isSecureTextEntry = false}
        alert.addAction(alertAction)
        self.present(alert, animated: true, completion: nil)
                                    
    }
    

}

