//
//  UITableView+Extension.swift
//  MyAssistant
//
//  Created by Muhammed Shibili on 1/22/19.
//  Copyright © 2019 Habbubulli. All rights reserved.
//

import UIKit

extension UITableView {
    /// Register the cell with class name as identifer
    func registerReusableCell<T: UITableViewCell>(_:T.Type) where T: Reusable {
        self.register(T.self, forCellReuseIdentifier: T.reusableIdentifier)
    }

    /// Deque cell using the class reuse identifier
    func dequeReusableCell<T: UITableViewCell>(indexPath: NSIndexPath) -> T where T: Reusable  {
        return self.dequeueReusableCell(withIdentifier: T.reusableIdentifier, for: indexPath as IndexPath) as! T
    }
}

