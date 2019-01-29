//
//  HBNavigationManager.swift
//  MyAssistant
//
//  Created by Muhammed Shibili on 11/19/18.
//  Copyright © 2018 Habbubulli. All rights reserved.
//

import UIKit

class HBNavigationManager: UINavigationController {
    
    static let shared: HBNavigationManager = HBNavigationManager()
    
    // instantiate story board
    func storyboard(with identifier: String?) -> UIStoryboard {
        if let identifier = identifier {
            let storyBoard = UIStoryboard.init(name: identifier, bundle: nil)
            return storyBoard
        }else {
            let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
            return storyBoard
        }
    }
    
    // make root view controller
    func setRootViewController(viewControllerWithIdentifier: String, storyboardIdentifier: String? = nil) {
        let storyboard = self.storyboard(with: storyboardIdentifier)
        let nextVC = storyboard.instantiateViewController(withIdentifier: viewControllerWithIdentifier)
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        appDelegate.window?.rootViewController = nextVC
    }
    
    // handle navigation to a VC
    func navigateTo(viewControllerWithIdentifier: String, storyboardIdentifier: String? = nil) {
        let storyboard = self.storyboard(with: storyboardIdentifier)
        let nextVC = storyboard.instantiateViewController(withIdentifier: viewControllerWithIdentifier)
        pushViewController(nextVC, animated: true)
    }
    
}
