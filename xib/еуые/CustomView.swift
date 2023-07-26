//
//  CustomView.swift
//  еуые
//
//  Created by admin1 on 25.07.23.
//

import UIKit

@IBDesignable
final class CustomView: UIView {
    
    @IBOutlet private weak var titleLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        configureView()
    }
}

extension CustomView {
    private func configureView() {
        guard let view = self.loadViewFromNib(nibName: "CustomView") else { return }
        view.frame = self.bounds
        self.addSubview(view)
    }
    
    func configureLabel(title: String) {
        self.titleLabel.text = title
    }
}
