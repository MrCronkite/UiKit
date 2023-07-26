//
//  ViewController.swift
//  еуые
//
//  Created by admin1 on 24.07.23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var firstView: CustomView!
    
    @IBOutlet private weak var secondView: CustomView!
    
    @IBOutlet private weak var thirdView: CustomView!
    
    @IBOutlet private weak var imageLogo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstView.configureLabel(title: "hello")
        secondView.configureLabel(title: "Vlad")
        thirdView.configureLabel(title: "Shimchenko")
        
        setupView()
    }
}

extension ViewController {
    private func setupView() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handlerTap(_: )))
        imageLogo.addGestureRecognizer(tapGesture)
        imageLogo.isUserInteractionEnabled = true
    }
    
    @objc func handlerTap(_ gesture: UITapGestureRecognizer) {
        print("hello image")
    }
}
