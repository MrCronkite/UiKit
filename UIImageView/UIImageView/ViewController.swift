//
//  ViewController.swift
//  UIImageView
//
//  Created by admin1 on 27.10.22.
//

import UIKit

class ViewController: UIViewController {
    
    let image = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.addSubview(image)
        image.layer.cornerRadius = 10
        image.layer.borderWidth = 2
        image.contentMode = .scaleAspectFill
      
        image.image = UIImage(named: "12")
        
        guard let urlImg = URL(string: "https://bigenc.ru/media/2016/10/27/1235177203/11340.jpg") else { return }
        let data = try! Data(contentsOf: urlImg)
        
        image.image = UIImage(data: data)
        
        image.translatesAutoresizingMaskIntoConstraints  = false
        
        NSLayoutConstraint.activate([
            image.heightAnchor.constraint(equalToConstant: 400),
            image.widthAnchor.constraint(equalToConstant: 400),
            image.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            image.topAnchor.constraint(equalTo: view.topAnchor, constant: 50)
        ])
        
    }


}

