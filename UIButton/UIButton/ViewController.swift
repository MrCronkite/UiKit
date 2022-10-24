//
//  ViewController.swift
//  UIButton
//
//  Created by admin1 on 24.10.22.
//

import UIKit

class ViewController: UIViewController {

    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.frame = CGRect(x: 100, y: 100, width: 50, height: 100)
        button.setTitle("hello", for: .normal )
        button.setTitleColor( .darkGray, for: .normal)
        button.backgroundColor = .green
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(getText), for: .touchUpInside)
    }


    @objc func getText(){
        print("hello")
    }
}

