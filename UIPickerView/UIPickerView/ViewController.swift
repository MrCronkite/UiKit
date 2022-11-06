//
//  ViewController.swift
//  UIPickerView
//
//  Created by admin1 on 6.11.22.
//

import UIKit

class ViewController: UIViewController {
    
    let picker = UIPickerView()

    override func viewDidLoad() {
        super.viewDidLoad()
    
        picker.frame = CGRect(x: 10, y: 100, width: 340, height: 216)
        view.addSubview(picker)
        picker.delegate = self
        picker.dataSource = self
    }

}

extension ViewController: UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        4
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        20
    }
    
    
}

extension ViewController: UIPickerViewDelegate{
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(row)"
    }
}

