//
//  ProgressController.swift
//  workoutApp
//
//  Created by admin1 on 10.04.23.
//

import UIKit

class ProgressController: BaseController {
    
    private let dailyPerformanceView = DailyPerformanceView(with: R.Strings.Progress.dailyPerformance,
                                                            buttonTitle: R.Strings.Progress.last7Days.uppercased())

    private let montlyPerformanceView = MontlyPerformanceView(with: R.Strings.Progress.monthlyPerformance,
                                                            buttonTitle: R.Strings.Progress.last10Months.uppercased())

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ProgressController {
    override func setupViews() {
        super.setupViews()
        
        view.addView(dailyPerformanceView)
        view.addView(montlyPerformanceView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            dailyPerformanceView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            dailyPerformanceView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            dailyPerformanceView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            dailyPerformanceView.heightAnchor.constraint(equalTo: dailyPerformanceView.widthAnchor, multiplier: 0.68),
            
            montlyPerformanceView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            montlyPerformanceView.topAnchor.constraint(equalTo: dailyPerformanceView.bottomAnchor, constant: 15),
            montlyPerformanceView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            montlyPerformanceView.heightAnchor.constraint(equalTo: montlyPerformanceView.widthAnchor, multiplier: 1.06)
            
        ])
    }
    
    override func configureView() {
        super.configureView()
        
        title = R.Strings.NavBar.progress
        navigationController?.tabBarItem.title = R.Strings.TabBar.title(for: .progress)
        
        addNavBarButton(at: .left, with: R.Strings.Progress.navBarLeft)
        addNavBarButton(at: .right, with: R.Strings.Progress.navBarRight)
        
        dailyPerformanceView.configure(with: [
            .init(value: "1", heighParm: 0.1, title: "Mon"),
            .init(value: "2", heighParm: 0.4, title: "Teu"),
            .init(value: "3", heighParm: 0.6, title: "Wen"),
            .init(value: "4", heighParm: 0.8, title: "Thu"),
            .init(value: "5", heighParm: 1, title: "Fri"),
            .init(value: "3", heighParm: 0.6, title: "Sat"),
            .init(value: "2", heighParm: 0.4, title: "Sun"),
        ])
        
        montlyPerformanceView.configure(with: [
            .init(value: 45, title: "Mar"),
            .init(value: 55, title: "Apr"),
            .init(value: 60, title: "May"),
            .init(value: 65, title: "Jun"),
            .init(value: 70, title: "Jul"),
            .init(value: 80, title: "Aug"),
            .init(value: 65, title: "Sep"),
            .init(value: 45, title: "Oct"),
            .init(value: 30, title: "Nov"),
            .init(value: 15, title: "Dec"),
        ])
    }
}
