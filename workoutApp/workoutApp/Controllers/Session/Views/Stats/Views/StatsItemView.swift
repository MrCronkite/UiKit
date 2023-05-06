//
//  StatsItemView.swift
//  workoutApp
//
//  Created by admin1 on 6.05.23.
//

import UIKit

final class StatsItemView: BaseView {
    
    struct StatsItem {
        let imageName: UIImage?
        let value: String
        let title: String
    }
    
    private let imageView = UIImageView()
    
    private let valueLable: UILabel = {
       let lable = UILabel()
        lable.font = R.Fonts.helveticaRegular(witf: 17)
        lable.textColor = R.Colors.titleGray
        return lable
    }()
    
    private let titleLable: UILabel = {
       let lable = UILabel()
        lable.font = R.Fonts.helveticaRegular(witf: 10)
        lable.textColor = R.Colors.inactive
        return lable
    }()
    
    private let stackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        return view
    }()
    
    func configure(with item: StatsItem) {
        imageView.image = item.imageName
        valueLable.text = item.value
        titleLable.text = item.title
    }
}

extension StatsItemView {
    override func setupViews() {
        super.setupViews()
        
        addView(imageView)
        addView(stackView)
        stackView.addArrangedSubview(valueLable)
        stackView.addArrangedSubview(titleLable)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            imageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 23),
            
            stackView.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 15),
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
    
    override func configureViews() {
        super.configureViews()
    }
}
