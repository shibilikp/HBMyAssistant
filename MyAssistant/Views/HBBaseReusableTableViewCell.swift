//
//  HBBaseReusableTableViewCell.swift
//  MyAssistant
//
//  Created by Muhammed Shibili on 1/22/19.
//  Copyright © 2019 Habbubulli. All rights reserved.
//

import UIKit

class HBBaseReusableTableViewCell: UITableViewCell, Reusable {
    static var nib: UINib {
        return UINib(nibName: String(describing: self), bundle: nil)
    }
}

class HBBaseReusableCollectionViewCell: UICollectionViewCell, Reusable {
    static var nib: UINib {
        return UINib(nibName: String(describing: HBBaseReusableCollectionViewCell.self), bundle: nil)
    }
}

