//
//  ViewController.swift
//  еуые
//
//  Created by admin1 on 24.07.23.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet weak var picker: UIPickerView!
    
    @IBOutlet private weak var imageLogo: UIImageView!
    
    let data = ["Опция 1", "Опция 2", "Опция 3", "Опция 4", "Опция 5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.lible.configureLabel(title: "hello")
        picker.delegate = self
        picker.dataSource = self
        
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
//        let storyboard = UIStoryboard(name: "TabBarStoryboard", bundle: nil)
//        let tabBarController = storyboard.instantiateViewController(withIdentifier: "tabBarId")
//        if let sheet = tabBarController.sheetPresentationController {
//            sheet.detents = [.medium()]
//        }
        let tabbar = TabBarController()
        tabbar.modalPresentationStyle = .fullScreen
        self.present(tabbar, animated: true)
        
    }
}


extension ViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let selected = data[row]
        print("Выбрано: \(selected)")
    }
}

extension ViewController: UIPickerViewDataSource {
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        data.count
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
}

