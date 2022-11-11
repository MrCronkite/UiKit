//
//  ViewController.swift
//  UITextView
//
//  Created by admin1 on 11.11.22.
//

import UIKit

class ViewController: UIViewController {
    
    let textView: UITextView = {
       let textV = UITextView()
        textV.layer.borderWidth = 1
        textV.layer.borderColor = UIColor.red.cgColor
        textV.layer.cornerRadius = 10
        textV.dataDetectorTypes = [.link, .phoneNumber]
        
        let shadow = NSShadow()
        shadow.shadowColor = .green
        shadow.shadowBlurRadius = 15
        
        textV.linkTextAttributes = [
            NSAttributedString.Key.foregroundColor: .green,
            NSAttributedString.Key.shadow: shadow
        ]
        
        return textV
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(textView)
        
        textView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            textView.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            textView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textView.widthAnchor.constraint(equalToConstant: 300),
            textView.heightAnchor.constraint(equalToConstant: 200)
        ])
    }


}

