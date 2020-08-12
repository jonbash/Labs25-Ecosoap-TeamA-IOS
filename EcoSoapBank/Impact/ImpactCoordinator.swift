//
//  ImpactCoordinator.swift
//  EcoSoapBank
//
//  Created by Jon Bash on 2020-08-07.
//  Copyright © 2020 Spencer Curtis. All rights reserved.
//

import UIKit


class ImpactCoordinator: FlowCoordinator {
    var rootVC = configure(UINavigationController()) {
        $0.pushViewController(ImpactViewController(), animated: false)
        $0.navigationBar.prefersLargeTitles = true
        $0.navigationBar.largeTitleTextAttributes = [
            NSAttributedString.Key.font: UIFont.montserrat(ofSize: 30, style: .semiBold),
            NSAttributedString.Key.foregroundColor: UIColor.white
        ]
    }
    
    func start() {
        let globe = UIImage(
            systemName: "globe",
            withConfiguration: UIImage.SymbolConfiguration(pointSize: 22, weight: .regular)
        )
        rootVC.tabBarItem = UITabBarItem(title: "Impact", image: globe, tag: 0)
    }
}
