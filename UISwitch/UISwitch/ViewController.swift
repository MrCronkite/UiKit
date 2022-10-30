//
//  ViewController.swift
//  UISwitch
//
//  Created by admin1 on 30.10.22.
//

import UIKit

class ViewController: UIViewController {
    
    let switchView = UISwitch()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(switchView)
        switchView.setOn(true, animated: true)
        
        
        switchView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
           // switchView.heightAnchor.constraint(equalToConstant: 200),
           // switchView.widthAnchor.constraint(equalToConstant: 200),
            switchView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            switchView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        
    }


}

