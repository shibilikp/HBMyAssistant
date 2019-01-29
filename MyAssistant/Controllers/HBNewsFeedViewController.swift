//
//  HBNewsFeedViewController.swift
//  MyAssistant
//
//  Created by Muhammed Shibili on 11/19/18.
//  Copyright © 2018 Habbubulli. All rights reserved.
//

import UIKit
import ObjectMapper

class HBNewsFeedViewController: UIViewController {
    
    @IBOutlet var newsFeedCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // register
        newsFeedCollectionView.register(HBNewsFeedCollectionViewCell.self)
        newsFeedCollectionView.dataSource = self
        
        HBDataManager.shared.loadFromJsonFile(fileName: "Glossary", ofType: "json") { (result, error) in
            guard error == nil else {
                print("error>>>>", error?.localizedDescription ?? "")
                return
            }
            guard let result = result, let glossary = result["glossary"] as? [String: AnyObject] else { return }
            let a = Mapper<HBGlossary>().map(JSON: glossary)
        }
    }
}

extension HBNewsFeedViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: HBNewsFeedCollectionViewCell = newsFeedCollectionView.dequeReusableCell(indexPath: indexPath as NSIndexPath)
        return cell
    }
}

