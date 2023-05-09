//
//  ChartView.swift
//  workoutApp
//
//  Created by admin1 on 9.05.23.
//

import UIKit

final class ChartView: BaseView {
    
    private let ySeparator: UIView = {
        let view = UIView()
        view.backgroundColor = R.Colors.separator
        return view
    }()
    
    private let xSeparator: UIView = {
        let view = UIView()
        view.backgroundColor = R.Colors.separator
        return view
    }()
    
    func configurator(with data: [WAChartsView.Data]) {
        
        layoutIfNeeded()
        addDashesLines()
    }
    
}

extension ChartView {
    override func setupViews() {
        super.setupViews()
        
        addView(ySeparator)
        addView(xSeparator)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            ySeparator.leadingAnchor.constraint(equalTo: leadingAnchor),
            ySeparator.topAnchor.constraint(equalTo: topAnchor),
            ySeparator.bottomAnchor.constraint(equalTo: bottomAnchor),
            ySeparator.widthAnchor.constraint(equalToConstant: 1),
            
            xSeparator.leadingAnchor.constraint(equalTo: leadingAnchor),
            xSeparator.trailingAnchor.constraint(equalTo: trailingAnchor),
            xSeparator.bottomAnchor.constraint(equalTo: bottomAnchor),
            xSeparator.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
}

private extension ChartView {
    func addDashesLines(with counts: Int? = nil) {
        (0..<9).map { CGFloat($0) }.forEach {
            addDashLine(at: bounds.height / 9 * $0)
        }
    }
    
    func addDashLine(at yPosition: CGFloat) {
        let startPoint = CGPoint(x: 0, y: yPosition)
        let endPoint = CGPoint(x: bounds.width, y: yPosition)
        
        let dashPath = CGMutablePath()
        dashPath.addLines(between: [startPoint, endPoint])
        
        
        let dashLayer = CAShapeLayer()
        dashLayer.strokeColor = R.Colors.separator.cgColor
        dashLayer.lineWidth = 1
        dashLayer.lineDashPattern = [6, 3]
        dashLayer.path = dashPath
        
        layer.addSublayer(dashLayer)
    }
}
