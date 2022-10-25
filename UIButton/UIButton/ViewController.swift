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
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            button.widthAnchor.constraint(equalToConstant: 150),
            button.heightAnchor.constraint(equalToConstant: 100),
           // button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -6),
           // button.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10)
        ])
        
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(getText), for: .touchUpInside)
    }


    @objc func getText(){
        print("hello")
    }
}

