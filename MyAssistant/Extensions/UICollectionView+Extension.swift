//
//  UICollectionView+Extension.swift
//  MyAssistant
//
//  Created by Muhammed Shibili on 1/29/19.
//  Copyright © 2019 Habbubulli. All rights reserved.
//

import Foundation
import UIKit

extension UICollectionView {
    /// Register the cell with class name as identifer
    func registerReusableCell<T: UICollectionViewCell>(_:T.Type) where T: Reusable {
        self.register(T.self, forCellWithReuseIdentifier: T.reusableIdentifier)
    }
    
    /// Register With Nib
    func register<T: UICollectionViewCell>(_: T.Type) where T: Reusable, T: NibLoadable {
        let bundle = Bundle(for: T.self)
        let nib = UINib(nibName: T.nib, bundle: bundle)
        
        register(nib, forCellWithReuseIdentifier: T.reusableIdentifier)
    }
    
    /// Deque cell using the class reuse identifier
    func dequeReusableCell<T: UICollectionViewCell>(indexPath: NSIndexPath) -> T where T: Reusable  {
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reusableIdentifier, for: indexPath as IndexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.reusableIdentifier)")
        }
        return cell
    }
}

