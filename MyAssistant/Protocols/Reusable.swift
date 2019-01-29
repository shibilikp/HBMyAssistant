//
//  Reusable.swift
//  MyAssistant
//
//  Created by Muhammed Shibili on 1/22/19.
//  Copyright © 2019 Habbubulli. All rights reserved.
//

import Foundation
import UIKit

protocol Reusable {
    /// Returns class name as identifier
    static var reusableIdentifier: String { get }
    static var nib: UINib? { get }
}

extension Reusable {
    static var reusableIdentifier: String {
        return String(describing: self)
    }
    
    static var nib: UINib? {
        return UINib(nibName: "", bundle: nil)
    }
}

