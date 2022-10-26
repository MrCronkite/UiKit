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
        
        button.setTitle("hello", for: .normal )
        button.setTitleColor( .darkGray, for: .normal)
        button.backgroundColor = .green
        view.addSubview(button)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            button.heightAnchor.constraint(equalToConstant: 100),
            button.widthAnchor.constraint(equalToConstant: 100),
            button.topAnchor.constraint(equalTo: view.topAnchor, constant: 56),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        button.addTarget(self, action: #selector(getText), for: .touchUpInside)
    }


    @objc func getText(){
        print("hello")
    }
}

