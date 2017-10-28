//
//  CLLightNavigationControllerDelegate.swift
//  Proyect Jaime
//
//  Created by dcl16 on 28/10/17.
//  Copyright © 2017 dcl16. All rights reserved.
//

import Foundation
import UIKit

protocol backItem{
    func addBackItemButton(title: String)
}

extension backItem where Self: UIViewController {
    
    func addBackItemButton(title: String){
        let barButton = UIBarButtonItem()
        barButton.title = title
        self.navigationItem.backBarButtonItem = barButton
    }
}

extension UIViewController: backItem {}
