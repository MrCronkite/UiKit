//
//  SettingsController.swift
//  workoutApp
//
//  Created by admin1 on 10.04.23.
//

import UIKit

class SettingsController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Settings"
        navigationController?.tabBarItem.title = Resouces.Strings.TabBar.settings
    }

}
