//
//  Picker.swift
//  еуые
//
//  Created by admin1 on 27.07.23.
//

import UIKit

@IBDesignable
final class Picker: UIView {
    
    @IBOutlet private weak var pickerView: UIPickerView!
    
    let data = ["Опция 1", "Опция 2", "Опция 3", "Опция 4", "Опция 5"]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        pickerView.delegate = self
        pickerView.dataSource = self
        
        setupXib()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        setupXib()
    }
}

extension Picker {
    private func setupXib() {
        guard let view = self.loadViewFromNib(nibName: "Picker") else { return }
        view.frame = self.bounds
        self.addSubview(view)
    }
}


extension Picker: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let selected = data[row]
        print("Выбрано: \(selected)")
    }
}

extension Picker: UIPickerViewDataSource {
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        data.count
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
}
