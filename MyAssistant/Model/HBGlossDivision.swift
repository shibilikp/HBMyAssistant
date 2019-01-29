//
//  HBGlossDivision.swift
//  MyAssistant
//
//  Created by Muhammed Shibili on 11/28/18.
//  Copyright © 2018 Habbubulli. All rights reserved.
//

import Foundation
import ObjectMapper

class HBGlossDivision: Mappable {
    
    var title: String?
//    var glossList: String?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        title    <- map["title"]
//        glossList    <- map["GlossList"]
    }
}

