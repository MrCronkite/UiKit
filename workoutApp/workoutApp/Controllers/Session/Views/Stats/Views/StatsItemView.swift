//
//  StatsItemView.swift
//  workoutApp
//
//  Created by admin1 on 6.05.23.
//

import UIKit

enum StatsItem {
    case heartRate(value: String)
    case averagePace(value: String)
    case totalDistance(value: String)
    case totalSteps(value: String)
    
    var data: StatsItemView.StatsData {
        switch self {
        case .heartRate(let value):
            return .init(imageName: R.Images.Session.Stats.heartRate,
                         value: "\(value) bpm",
                         title: R.Strings.Session.heartRate)
        case .averagePace(let value):
            return .init(imageName: R.Images.Session.Stats.averagePace,
                         value: value + " / km",
                         title: R.Strings.Session.averagePace)
        case .totalSteps(let value):
            return .init(imageName: R.Images.Session.Stats.totalSteps,
                         value: value,
                         title: R.Strings.Session.totalSteps)
        case .totalDistance(let value):
            return .init(imageName: R.Images.Session.Stats.totalDistance,
                         value: value + " km",
                         title: R.Strings.Session.totalDistance)
        }
    }
}

final class StatsItemView: BaseView {
    
    struct StatsData {
        let imageName: UIImage?
        let value: String
        let title: String
    }
    
    private let imageView = UIImageView()
    
    private let valueLable: UILabel = {
       let lable = UILabel()
        lable.font = R.Fonts.helvelticaRegular(with: 17)
        lable.textColor = R.Colors.titleGray
        return lable
    }()
    
    private let titleLable: UILabel = {
       let lable = UILabel()
        lable.font = R.Fonts.helvelticaRegular(with: 10)
        lable.textColor = R.Colors.inactive
        return lable
    }()
    
    private let stackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        return view
    }()
    
    func configure(with item: StatsItem) {
        imageView.image = item.data.imageName
        valueLable.text = item.data.value
        titleLable.text = item.data.title.uppercased()
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
