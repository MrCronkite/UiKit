//
//  TimerView.swift
//  workoutApp
//
//  Created by admin1 on 22.04.23.
//

import UIKit

final class TimerView: WABaseInfoView {
    private let progressView:  ProgressView = {
        let view = ProgressView()
        view.drawProgress(with: 0.8)
        return view
    }()
}

extension TimerView {
    override func setupViews() {
        super.setupViews()
        
        addView(progressView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            progressView.topAnchor.constraint(equalTo: topAnchor, constant: 40),
            progressView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            progressView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            progressView.heightAnchor.constraint(equalTo: progressView.widthAnchor)
        ])
    }
    
    override func configureViews() {
        super.configureViews()
    }
}
