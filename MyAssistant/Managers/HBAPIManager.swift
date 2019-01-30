//
//  HBAPIManager.swift
//  MyAssistant
//
//  Created by Muhammed Shibili on 1/30/19.
//  Copyright © 2019 Habbubulli. All rights reserved.
//

import Foundation
import PromiseKit
import ObjectMapper
import SwiftyBeaver

class HBAPIManager {
    
    static let shared: HBAPIManager = HBAPIManager()
    
    /// Returns the glossary Details
    ///
    /// - parameters: nil
    /// - returns: HBGlossary Item
    func getGlossary() -> Promise<HBGlossary> {
        return Promise { seal in
            HBDataManager.shared.loadFromJsonFile(fileName: HBJsonFiles.glossary, completion: { (result, error) in
                guard error == nil else {
                    seal.reject(error!)
                    return
                }
                guard let result = result, let glossary = result["glossary"] as? [String: AnyObject] else {
                    SwiftyBeaver.error("Iteration failed for result")
                    return
                }
                
                guard let glossaryItem = Mapper<HBGlossary>().map(JSON: glossary) else {
                    SwiftyBeaver.error("Mapping Failed for \(glossary)")
                    return
                }
                seal.fulfill(glossaryItem)
            })
        }
    }
}
