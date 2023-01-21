//
//  CommonCell.swift
//  ColectionView
//
//  Created by admin1 on 21.01.23.
//

import UIKit

class CommonCell: UICollectionViewCell {
    
    @IBOutlet private var iconImage: UIImageView!
    @IBOutlet private var textLabel: UILabel!
    @IBOutlet private var closeButton: UIButton!
    
    func configure(icon: UIImage?, text: String) {
        iconImage.image = icon
        textLabel.text = text
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        contentView.layer.cornerRadius = 16
    }
    
    
}
