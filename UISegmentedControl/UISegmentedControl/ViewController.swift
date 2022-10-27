//
//  ViewController.swift
//  UISegmentedControl
//
//  Created by admin1 on 27.10.22.
//

import UIKit

class ViewController: UIViewController {
    
    let segmented = UISegmentedControl()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        segmented.insertSegment(withTitle: "one", at: 1, animated: true)
        segmented.insertSegment(withTitle: "two", at: 2, animated: true)
        segmented.insertSegment(withTitle: "three", at: 0, animated: true)
        
        view.addSubview(segmented)
        
        segmented.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            segmented.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            segmented.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            segmented.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16)
        ])
        
    }


}

