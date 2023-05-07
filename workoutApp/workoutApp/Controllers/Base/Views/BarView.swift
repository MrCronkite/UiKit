//
//  BarView.swift
//  workoutApp
//
//  Created by admin1 on 7.05.23.
//

import UIKit

extension BarView {
    struct Data {
        let value: String
        let heighParm: Double
        let title: String
    }
}

final class BarView: BaseView {
    
    private let heightMultiplayer: Double
    
    private let valueLable: UILabel = {
       let lable = UILabel()
        lable.font = R.Fonts.helvelticaRegular(with: 13)
        lable.textColor = R.Colors.active
        return lable
    }()
    
    private let barView: UIView = {
       let view = UIView()
        view.backgroundColor = R.Colors.active
        view.layer.cornerRadius = 2.5
    return view
    }()
    
    private let titleLable: UILabel = {
       let lable = UILabel()
        lable.font = R.Fonts.helvelticaRegular(with: 9)
        lable.textColor = R.Colors.inactive
        return lable
    }()
    
    init(data: Data) {
        self.heightMultiplayer = data.heighParm
        super.init(frame: .zero)
        
        valueLable.text = data.value
        titleLable.text = data.title
    }
    
    required init?(coder: NSCoder) {
        self.heightMultiplayer = 0
        super.init(frame: .zero)
    }
    
}

extension BarView {
    override func setupViews() {
        super.setupViews()
        
        addView(barView)
        addView(valueLable)
        addView(titleLable)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            valueLable.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            barView.topAnchor.constraint(equalTo: valueLable.bottomAnchor, constant: 5),
            barView.centerXAnchor.constraint(equalTo: centerXAnchor),
            barView.widthAnchor.constraint(equalToConstant: 19),
            barView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: heightMultiplayer, constant: -40),
            
            titleLable.topAnchor.constraint(equalTo: barView.bottomAnchor, constant: 10),
            titleLable.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleLable.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    override func configureViews() {
        super.configureViews()
    }
}

