//
//  ButtonCell.swift
//  ColectionView
//
//  Created by admin1 on 21.01.23.
//

import UIKit


class ButtonCell: UICollectionViewCell {
    
    @IBOutlet private var topButton: UIButton!
    @IBOutlet private var bottomButton: UIButton!
    
    func configure() {
        topButton.setImage(UIImage(systemName: "doc.badge.gearshape.fill"), for: .normal)
        bottomButton.setImage(UIImage(systemName: "doc.badge.gearshape.fill"), for: .normal)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        topButton.layer.cornerRadius = 10
        bottomButton.layer.cornerRadius = 10
    }
}

