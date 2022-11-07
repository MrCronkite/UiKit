//
//  ViewController.swift
//  UIDatePicker
//
//  Created by admin1 on 7.11.22.
//

import UIKit

class ViewController: UIViewController {
    
    let datePicker = UIDatePicker()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(datePicker)
        datePicker.frame = CGRect(x: 10, y: 250, width: 320, height: 216)
        datePicker.datePickerMode = .time
        datePicker.contentMode = .top
        datePicker.preferredDatePickerStyle = .wheels
        datePicker.minuteInterval = 10
        
        datePicker.layer.borderWidth = 5
        
        datePicker.addTarget(self, action: #selector(getData), for: .valueChanged)
    }

    @objc func getData(sender: UIDatePicker){
        print(sender.date)
    }

}

