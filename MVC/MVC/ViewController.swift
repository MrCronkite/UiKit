//
//  ViewController.swift
//  MVC
//
//  Created by admin1 on 10.07.22.
//

import UIKit

class ViewController: UIViewController {
    
   
    
   override func loadView(){
        super.loadView()
        print("loadView")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        hello()
    }
    
    override func viewDidAppear(_ animated: Bool) {
          super.viewDidAppear(animated)
        print("viewDidApper")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillApper")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("viewDidLayoutSubviews")
    }
    
    func hello(){
        print("hello")
    }


}

