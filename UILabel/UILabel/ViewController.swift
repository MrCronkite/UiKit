//
//  ViewController.swift
//  UILabel
//
//  Created by admin1 on 23.10.22.
//

import UIKit

class ViewController: UIViewController {
    
    let label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        label.frame = CGRect(x: 100, y: 300, width: 200, height: 150)
        label.text = "some text for hello world vladik 12345888"
        label.textColor = .link
        label.numberOfLines = 0
        
        label.shadowColor = .green
        label.shadowOffset = CGSize(width: 1, height: 1)
        view.addSubview(label)
        
       
    }


}

