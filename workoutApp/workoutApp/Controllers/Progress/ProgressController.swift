//
//  ProgressController.swift
//  workoutApp
//
//  Created by admin1 on 10.04.23.
//

import UIKit

class ProgressController: BaseController {
    
    private let dailyPerformanceView = DailyPerformanceView()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ProgressController {
    override func setupViews() {
        super.setupViews()
    }
    
    override func constraintViews() {
        super.constraintViews()
    }
    
    override func configureView() {
        super.configureView()
        
        title = R.Strings.NavBar.progress
        navigationController?.tabBarItem.title = R.Strings.TabBar.title(for: .progress)
        
        addNavBarButton(at: .left, with: R.Strings.Progress.navBarLeft)
        addNavBarButton(at: .right, with: R.Strings.Progress.navBarRight)
    }
}
