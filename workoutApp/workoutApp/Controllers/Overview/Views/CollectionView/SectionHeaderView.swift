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
        configureView()
    }
    
    required init?(coder: NSCoder) {
        super.init(frame: .zero)
        
        setupViews()
        constraintView()
        configureView()
    }
    
    func configure(with title: String) {
        self.title.text = title.uppercased()
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
    
    func configureView() {
//        backgroundColor = .white
    }
}