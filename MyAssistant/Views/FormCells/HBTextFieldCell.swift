//
//  HBTextFieldCell.swift
//  MyAssistant
//
//  Created by Muhammed Shibili on 12/5/18.
//  Copyright © 2018 Habbubulli. All rights reserved.
//

import Foundation
import Eureka

public class HBTextFieldCell: Cell<Bool>, CellType, UITextFieldDelegate {
    
    @IBOutlet var textField: UITextField!
    @IBOutlet var errorLabel: UILabel!
    
    public override func setup() {
        super.setup()
        textField.delegate = self
    }
    
    public override func update() {
        if textField.text == nil {
            errorLabel.text = "No Input"
        }
    }
 
    public func textFieldDidEndEditing(_ textField: UITextField) {
        row.updateCell()
    }
}

public final class HBTextFieldRow: Row<HBTextFieldCell>, RowType {
    public required init(tag: String?) {
        super.init(tag: tag)
        
        cellProvider = CellProvider<HBTextFieldCell>(nibName: "HBTextFieldCell")
    }
}
