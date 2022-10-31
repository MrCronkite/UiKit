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
        
        switchView.tintColor = .red
        switchView.onTintColor = .yellow
        switchView.thumbTintColor = .green
        
        
        
        switchView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            switchView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            switchView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        switchView.addTarget(self, action: #selector(setAction), for: .valueChanged)
        
    }

    @objc func setAction(sender: UISwitch){
        print(sender.isOn ? 1 : 0)
    }

}

