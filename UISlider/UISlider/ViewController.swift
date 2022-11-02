//
//  ViewController.swift
//  UISlider
//
//  Created by admin1 on 2.11.22.
//

import UIKit

class ViewController: UIViewController {
    
    
    let label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let slider = UISlider(frame: CGRect(x: 0, y: 0, width: 300, height: 20))
        view.addSubview(slider)
        slider.center = view.center

        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.addTarget(self, action: #selector(sliderChange), for: .valueChanged)
        slider.isContinuous = false
        
        slider.thumbTintColor = .red
        slider.maximumTrackTintColor = .yellow
        slider.minimumTrackTintColor = .green
        
        label.frame = CGRect(x: 30, y: 300, width: 100, height: 100)
        view.addSubview(label)
        label.text = "Ghbdtn"
        
    }

    @objc func sliderChange(sender: UISlider){
        label.text = "\(sender.value)"
    }
}

