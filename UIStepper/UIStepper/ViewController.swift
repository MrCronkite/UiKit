//
//  ViewController.swift
//  UIStepper
//
//  Created by admin1 on 9.11.22.
//

import UIKit

class ViewController: UIViewController {
    
    let stepper = UIStepper()
    let label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(stepper)
        stepper.frame = CGRect(x: 30, y: 100, width: 100, height: 30)
        stepper.minimumValue = -30
        stepper.maximumValue = 30
        stepper.addTarget(self, action: #selector(setStepp), for: .valueChanged)
        stepper.stepValue = 0.3
        
        view.addSubview(label)
        label.text = "Hello"
        label.textAlignment = .center
       // label.layer.borderColor = CGColor(gray: 1, alpha: 1)
        label.layer.borderWidth = 3
        
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.widthAnchor.constraint(equalToConstant: 100),
            label.heightAnchor.constraint(equalToConstant: 30),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 100)
        ])
        
    }

    @objc func setStepp(sender: UIStepper){
        label.text = "\(sender.value)"
        label.layer.borderWidth = sender.value
        print(sender.value)
    }

}

