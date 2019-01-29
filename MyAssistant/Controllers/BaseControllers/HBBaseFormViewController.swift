//
//  HBBaseFormViewController.swift
//  MyAssistant
//
//  Created by Muhammed Shibili on 11/28/18.
//  Copyright © 2018 Habbubulli. All rights reserved.
//

import UIKit
import Eureka

class HBBaseFormViewController: FormViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createForm()
    }
    
    func createForm() {
        // Child class will create form
    }
//    
//    func addTextRow(wit title: String, placeHolder: String? = nil) {
//        form +++ TextRow() {
//            $0.title = title
//            $0.placeholder = placeHolder
//        }
//    }
//    
//    func addPhoneRow(wit title: String, placeHolder: String? = nil) {
//        form +++ PhoneRow() {
//            $0.title = title
//            $0.placeholder = placeHolder
//        }
//    }
//    
//    func addDateRow(wit title: String, dateFormatter: DateFormatter? = nil) {
//    
//        // Set default date formatter if date formatter is nil
//        let defaultDateFormmatter = DateFormatter()
//        defaultDateFormmatter.timeStyle = .none
//        defaultDateFormmatter.dateStyle = .medium
//        defaultDateFormmatter.locale = Locale.current
//        
//        form +++ DateRow() {
//            $0.title = title
//            $0.dateFormatter = dateFormatter ?? defaultDateFormmatter
//            $0.value = Date(timeIntervalSinceReferenceDate: 0)
//        }
//    }
  
}
