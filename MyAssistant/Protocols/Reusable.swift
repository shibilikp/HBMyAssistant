//
//  Reusable.swift
//  MyAssistant
//
//  Created by Muhammed Shibili on 1/22/19.
//  Copyright © 2019 Habbubulli. All rights reserved.
//

import Foundation
import UIKit

protocol Reusable: class {
    /// Returns class name as identifier
    static var reusableIdentifier: String { get }
}

extension Reusable where Self: UIView {
    static var reusableIdentifier: String {
        return String(describing: self)
    }
}

