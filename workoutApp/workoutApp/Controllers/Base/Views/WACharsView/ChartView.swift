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
        drawChart(with: data)
        drawDashLine()
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
    func drawDashLine(with counts: Int? = nil) {
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
    
    func drawChart(with data: [WAChartsView.Data]) {
        guard let maxValue = data.sorted(by: { $0.value > $1.value }).first?.value else { return }
        let valuePoints = data.enumerated().map { CGPoint(x: CGFloat($0), y: CGFloat($1.value)) }
        let chartHeight = bounds.height / CGFloat(maxValue + 10)
        
        let points = valuePoints.map {
            let x = bounds.width / CGFloat(valuePoints.count - 1) * $0.x
            let y = bounds.height - $0.y * chartHeight
            return CGPoint(x: x, y: y)
        }
        
        let chartPath = UIBezierPath()
        chartPath.move(to: points[0])
        
        points.forEach {
            chartPath.addLine(to: $0)
        }
        
        let chartLayer = CAShapeLayer()
        chartLayer.path = chartPath.cgPath
        chartLayer.fillColor = UIColor.clear.cgColor
        chartLayer.strokeColor = R.Colors.active.cgColor
        chartLayer.lineWidth = 3
        chartLayer.strokeEnd = 1
        chartLayer.lineCap = .round
        chartLayer.lineJoin = .round
        
        layer.addSublayer(chartLayer)
    }
}
