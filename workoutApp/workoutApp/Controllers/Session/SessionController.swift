//
//  SessionController.swift
//  workoutApp
//
//  Created by admin1 on 10.04.23.
//

import UIKit

class SessionController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = Resouces.Strings.NavBar.session
        navigationController?.tabBarItem.title = Resouces.Strings.TabBar.session
        
        addNavBarButton(at: .left, with: "Pause")
        addNavBarButton(at: .right, with: "Finish")
    }

}
