//
//  SessionController.swift
//  workoutApp
//
//  Created by admin1 on 10.04.23.
//

import UIKit

class SessionController: BaseController {
    private let timerView: TimerView = {
        let view = TimerView()
        return view
    }()
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
            timerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            timerView.heightAnchor.constraint(equalToConstant: 500)
        ])
        
    }
    
    override func configureView() {
        super.configureView()
        
        title = R.Strings.NavBar.session
        navigationController?.tabBarItem.title = R.Strings.TabBar.title(for: .session)
        
        addNavBarButton(at: .left, with: R.Strings.Session.navBarLeft)
        addNavBarButton(at: .right, with: R.Strings.Session.navBarRight)
    }
}
