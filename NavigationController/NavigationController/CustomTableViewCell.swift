//
//  CustomTableViewCell.swift
//  NavigationController
//
//  Created by admin1 on 26.08.22.
//

import UIKit


class CustomTableViewCell: UITableViewCell {
    
    static let identifire = "CustomTableViewCell"
    
    
    let nameLabel: UILabel = {
            let label = UILabel()
            label.font = UIFont.systemFont(ofSize: 14)
            label.textColor = .red
            return label
        }()
        
        let descriptionLabel: UILabel = {
            let label = UILabel()
            label.font = UIFont.systemFont(ofSize: 10)
            label.textColor = .lightGray
            return label
        }()
        
        override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
            super.init(style: style, reuseIdentifier: reuseIdentifier)
            setupCell()
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        private func setupCell() {
            [nameLabel, descriptionLabel].forEach {
                $0.translatesAutoresizingMaskIntoConstraints = false
                contentView.addSubview($0)
            }
            
            NSLayoutConstraint.activate([
                nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
                nameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor   , constant: 8),
                nameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 8),
            ])
        }
        
        func config(contact: Contact) {
            nameLabel.text = contact.name
        }

    
}
