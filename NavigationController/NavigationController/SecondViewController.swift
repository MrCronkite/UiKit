//
//  SecondViewController.swift
//  NavigationController
//
//  Created by admin1 on 27.08.22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var text: UILabel!
    
    var index = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        text.text = index
    }
}
