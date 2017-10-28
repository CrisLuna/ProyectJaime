//
//  CLLightNavigationController.swift
//  Proyect Jaime
//
//  Created by dcl16 on 28/10/17.
//  Copyright © 2017 dcl16. All rights reserved.
//

import UIKit

class CLLightNavigationController: UINavigationController {
    
    override func viewDidLoad() {
        self.delegate = self
        self.interactivePopGestureRecognizer?.delegate = self
        self.navigationBar.isTranslucent = false
        self.navigationBar.barTintColor = .white
        self.navigationBar.tintColor = UIColor.mainColor()
        self.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.mainColor(), NSAttributedStringKey.font: UIFont(name: "Avenir", size: 18)!]
    }
}

extension CLLightNavigationController: UINavigationControllerDelegate{
    
    func navigationController(_ navigationControler: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        viewController.addBackItemButton(title: "")
    }
}

extension CLLightNavigationController: UIGestureRecognizerDelegate {
    
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        if let _ = self.navigationController as? CLLightNavigationController {
            if self.topViewController == self.viewControllers.first {
                return false
            }
            return true
        }
        return false
    }
}
