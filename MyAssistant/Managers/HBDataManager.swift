//
//  HBDataManager.swift
//  MyAssistant
//
//  Created by Muhammed Shibili on 11/28/18.
//  Copyright © 2018 Habbubulli. All rights reserved.
//

import Foundation

class HBDataManager: NSObject {
    
    typealias loadCompleteionBlock = (_ result: [String: AnyObject]?, _ error: Error?) -> ()
    
    static let shared: HBDataManager = HBDataManager()
    
    func loadFromJsonFile(fileName: String, ofType: String, completion: loadCompleteionBlock) {
        guard let path = Bundle.main.path(forResource: fileName, ofType: ofType) else { return }
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
            let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
            if let jsonResult = jsonResult as? [String: AnyObject] {
                completion(jsonResult, nil)
                print(jsonResult)
            }
        } catch {
            let error = NSError(domain: "shibili.ae", code: 404, userInfo: [NSLocalizedDescriptionKey : "NO JSON FILE"])
            completion(nil, error)
        }
    }
}
