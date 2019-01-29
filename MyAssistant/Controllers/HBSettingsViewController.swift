//
//  HBSettingsViewController.swift
//  MyAssistant
//
//  Created by Muhammed Shibili on 11/28/18.
//  Copyright © 2018 Habbubulli. All rights reserved.
//

import UIKit
import Eureka

class HBSettingsViewController: HBBaseFormViewController {

    override func createForm() {
        super.createForm()
        
        form +++ Section("Section1")
            <<< TextRow(){ row in
                row.title = "Text Row"
                row.placeholder = "Enter text here"
                row.add(rule: RuleRequired(msg: "asdasdasd"))
                row.validationOptions = .validatesOnChange
                }.cellUpdate{ (cell, row) in
                    if !row.isValid {
                        cell.titleLabel?.textColor = .red
                        print(row.validationErrors)
                    }
                }
            <<< PhoneRow(){
                $0.title = "Phone Row"
                $0.placeholder = "And numbers here"
            }
            <<< HBTextFieldRow(){
                $0.title = "Phone Row"
//                $0.cell.height = 
            }
            
            +++ Section("Section2")
            <<< DateRow(){
                $0.title = "Date Row"
                $0.value = Date(timeIntervalSinceReferenceDate: 0)
            }
            
            +++ Section("Section2")
            <<< SwitchRow(){
                $0.title = "Data"
                }.onChange{ (row) in
                    row.title = (row.value ?? false) ? "The title expands when on" : "The title"
                    row.updateCell()
                }.cellUpdate{ (cell, row) in
                    cell.backgroundColor = cell.switchControl.isOn ? UIColor.red : UIColor.white
                }
        }
}
