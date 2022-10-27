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
        image.highlightedImage = UIImage(systemName: "sunrise")
        
        image.image = UIImage(named: "12")
        
        image.translatesAutoresizingMaskIntoConstraints  = false
        
    }


}

