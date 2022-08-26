//
//  CustomTableViewCell.swift
//  NavigationController
//
//  Created by admin1 on 26.08.22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    static let identifire = "CustomTableViewCell"
    
    
    override func updateConfiguration(using state: UICellConfigurationState) {
        super.updateConfiguration(using: state)
        
        var contentConfig = defaultContentConfiguration().updated(for: state)
        contentConfig.text = "Hello World"
        contentConfig.image = UIImage(systemName: "bell")
        
        var backgroundConfig = backgroundConfiguration?.updated(for: state)
        backgroundConfig?.backgroundColor = .purple
        
        if state.isHighlighted || state.isSelected {
            backgroundConfig?.backgroundColor = .orange
            contentConfig.textProperties.color = .red
            contentConfig.imageProperties.tintColor = .yellow
        }
        
        contentConfiguration = contentConfig
        backgroundConfiguration = backgroundConfig
    }
    
}
