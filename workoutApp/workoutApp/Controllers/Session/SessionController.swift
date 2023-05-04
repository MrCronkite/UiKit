//
//  SessionController.swift
//  workoutApp
//
//  Created by admin1 on 10.04.23.
//

import UIKit

class SessionController: BaseController {
    private let timerView = TimerView()
    
    private let timerDuration = 3.0
    
    override func navBarLeftButtonHandler() {
        if timerView.state == .isStopped {
            timerView.startTimer()
        } else {
            timerView.pauseTimer()
        }
        
        timerView.state = timerView.state == .isRuning ? .isStopped : .isRuning
        setTitleNavBarButton(timerView.state == .isRuning
                             ? R.Strings.Session.navBarLeft : R.Strings.Session.navBarStart,
                             at: .left)
       
    }
    
    override func navBarRightButtonHandler() {
        timerView.stopTimer()
        timerView.state = .isStopped
        
        setTitleNavBarButton(R.Strings.Session.navBarStart, at: .left)
    }
}

extension SessionController {
   override func setupViews() {
        super.setupViews()
    
       view.addView(timerView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            timerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            timerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            timerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15)
        ])
        
    }
    
    override func configureView() {
        super.configureView()
        
        title = R.Strings.NavBar.session
        navigationController?.tabBarItem.title = R.Strings.TabBar.title(for: .session)
        
        addNavBarButton(at: .left, with: R.Strings.Session.navBarStart)
        addNavBarButton(at: .right, with: R.Strings.Session.navBarRight)
        
        timerView.configure(with: timerDuration, progress: 0)
    }
}
