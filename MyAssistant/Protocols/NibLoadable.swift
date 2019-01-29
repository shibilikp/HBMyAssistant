//
//  NibLoadable.swift
//  MyAssistant
//
//  Created by Muhammed Shibili on 1/29/19.
//  Copyright © 2019 Habbubulli. All rights reserved.
//

import Foundation
import UIKit

protocol NibLoadable: class  {
    /// Returns class name as identifier
    static var nib: String { get }
}

extension NibLoadable where Self: UIView {
    static var nib: String {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
}
