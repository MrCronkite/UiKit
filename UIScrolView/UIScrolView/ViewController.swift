//
//  ViewController.swift
//  UIScrolView
//
//  Created by admin1 on 13.11.22.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    let image = UIImageView()
    let scrol = UIScrollView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrol.frame = CGRect(x: 100, y: 300, width: 200, height: 200)
        view.addSubview(scrol)
        
        scrol.layer.borderColor = UIColor.black.cgColor
        scrol.layer.borderWidth = 1
        
        image.image = UIImage(systemName: "pencil.circle.fill")
        scrol.contentSize = CGSize(width: 500, height: 500)
        scrol.addSubview(image)
        image.frame.size = scrol.contentSize
        
    
    }


}

