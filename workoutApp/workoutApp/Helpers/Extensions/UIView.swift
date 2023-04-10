//
//  UIView.swift
//  workoutApp
//
//  Created by admin1 on 10.04.23.
//

import UIKit

extension UIView {
    func addBottomSeparator(with color: UIColor, heigh: CGFloat) {
        let separator = UIView()
        separator.backgroundColor = color
        separator.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        separator.frame = CGRect(x: 0,
                                 y: frame.height - heigh,
                                 width: frame.width,
                                 height: heigh)
        addSubview(separator)
    }
}
