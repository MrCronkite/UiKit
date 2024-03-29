//
//  TrainingCellView.swift
//  workoutApp
//
//  Created by admin1 on 10.05.23.
//

import UIKit

enum CellRoundedType {
    case top, bottom, all, notRound
}

final class TrainingCellView: UICollectionViewCell {
    static let id = "TrainingCellView"
    
    private let checkmarkView = UIImageView(image: R.Images.Overview.checkmarkNotDone)
    
    private let stackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.spacing = 3
        return view
    }()
    
    private let title: UILabel = {
        let lable = UILabel()
        lable.font = R.Fonts.helvelticaRegular(with: 17)
        lable.textColor = R.Colors.titleGray
        return lable
    }()
    
    private let subtitle: UILabel = {
        let lable = UILabel()
        lable.font = R.Fonts.helvelticaRegular(with: 13)
        lable.textColor = R.Colors.inactive
        return lable
    }()
    
    private let rightArreyView = UIImageView(image: R.Images.Overview.rightArrow)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        constraintViews()
        configureAppearance()
    }
    
    required init?(coder: NSCoder) {
        super.init(frame: .zero)
        
        setupViews()
        constraintViews()
        configureAppearance()
    }
    
    func configure(with title: String, subtitle: String, isDone: Bool, roundedType: CellRoundedType) {
        self.title.text = title
        self.subtitle.text = subtitle
        
        checkmarkView.image = isDone ? R.Images.Overview.checkmarkDone : R.Images.Overview.checkmarkNotDone
        
        switch roundedType {
        case .all: self.roundCorners([.allCorners], radius: 10)
        case .bottom: self.roundCorners([.bottomLeft, .bottomRight], radius: 10)
        case .top: self.roundCorners([.topLeft, .topRight], radius: 10)
        case .notRound: self.roundCorners([.allCorners], radius: 0)
        }
    }
}

private extension TrainingCellView {
    func setupViews() {
        
        addView(checkmarkView)
        addView(stackView)
        stackView.addArrangedSubview(title)
        stackView.addArrangedSubview(subtitle)
        addView(rightArreyView)
        
    }
    
    func constraintViews() {
        NSLayoutConstraint.activate([
            checkmarkView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            checkmarkView.centerYAnchor.constraint(equalTo: centerYAnchor),
            checkmarkView.heightAnchor.constraint(equalToConstant: 28),
            checkmarkView.widthAnchor.constraint(equalTo: checkmarkView.heightAnchor),
            
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            stackView.leadingAnchor.constraint(equalTo: checkmarkView.trailingAnchor, constant: 15),
            stackView.trailingAnchor.constraint(equalTo: rightArreyView.leadingAnchor, constant: -15),
            
            rightArreyView.centerYAnchor.constraint(equalTo: centerYAnchor),
            rightArreyView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            rightArreyView.widthAnchor.constraint(equalToConstant: 7),
            rightArreyView.heightAnchor.constraint(equalToConstant: 12)
        ])
    }
    
    func configureAppearance() {
        backgroundColor = .white
    }
}
