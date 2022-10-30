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
        
        segmented.selectedSegmentIndex = 1
        segmented.selectedSegmentTintColor = .yellow
        
        segmented.setWidth(200, forSegmentAt: 1)
        
        segmented.addTarget(self, action: #selector(getSegment), for: .valueChanged)
        
        view.addSubview(segmented)
        
        segmented.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            segmented.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            segmented.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            segmented.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16)
        ])
        
    }
    
    @objc func getSegment(sender: UISegmentedControl ){
        print(sender.titleForSegment(at: sender.selectedSegmentIndex)!)
    }


}

