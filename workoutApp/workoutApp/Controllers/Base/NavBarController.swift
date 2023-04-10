//
//  NavBarController.swift
//  workoutApp
//
//  Created by admin1 on 9.03.23.
//

import UIKit

final class NavBarControoler: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    private func configure() {
        view.backgroundColor = .white
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [
            .foregroundColor: Resouces.Colors.titleGray as Any,
            .font: Resouces.Fonts.helveticaRegular(witf: 17)
        ]
        navigationBar.addBottomSeparator(with: Resouces.Colors.separator, heigh: 1)
    }
}
