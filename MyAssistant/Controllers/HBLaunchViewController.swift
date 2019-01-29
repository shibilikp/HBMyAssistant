//
//  HBLaunchViewController.swift
//  MyAssistant
//
//  Created by Muhammed Shibili on 11/15/18.
//  Copyright © 2018 Habbubulli. All rights reserved.
//

import UIKit
import Lottie

class HBLaunchViewController: UIViewController {

    @IBOutlet var animatedView: LOTAnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animateLottie()
    }
    
    fileprivate func animateLottie() {
        animatedView.setAnimation(named: "loading_book")
        animatedView.loopAnimation = true
        animatedView.transform = .identity
        
        UIView.animate(withDuration: 3.0, delay: 0, options: [.repeat, .autoreverse], animations: {
            self.animatedView.transform = CGAffineTransform(scaleX: 2, y: 2)
            self.setRootViewController()
        })
        animatedView.play()
    }
    
    fileprivate func setRootViewController() {
    
        // Set root view controller after animation finishes
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            HBNavigationManager.shared.setRootViewController(viewControllerWithIdentifier: "HBTabBarController")
        }
    }
}
