//
//  NavBarController.swift
//  workoutApp
//
//  Created by admin1 on 9.03.23.
//

import UIKit

final class NavBarController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    private func configure() {
        view.backgroundColor = .white
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [
            .foregroundColor: R.Colors.titleGray as Any,
            .font: R.Fonts.helveticaRegular(witf: 17)
        ]
        navigationBar.addBottomSeparator(with: R.Colors.separator, heigh: 1)
    }
}
