//
//  SectionHeaderView.swift
//  workoutApp
//
//  Created by admin1 on 10.05.23.
//

import UIKit

final class SectionHeaderView: UICollectionReusableView {
    static let id = "SectionHeaderView"
    
    private let title: UILabel = {
        let lable = UILabel()
        lable.font = R.Fonts.helvelticaRegular(with: 13)
        lable.textColor = R.Colors.inactive
        lable.textAlignment = .center
        return lable
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        constraintView()
    }
    
    required init?(coder: NSCoder) {
        super.init(frame: .zero)
        
        setupViews()
        constraintView()
    }
    
    func configure(with date: Date) {
        let dateFormater = DateFormatter()
        dateFormater.dateFormat = "EEEE, MMMM dd"
        
        self.title.text = dateFormater.string(from: date).uppercased()
    }
}

private extension SectionHeaderView {
    func setupViews() {
        
        addView(title)
        
    }
    
    func constraintView() {
        NSLayoutConstraint.activate([
            title.centerXAnchor.constraint(equalTo: centerXAnchor),
            title.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}
