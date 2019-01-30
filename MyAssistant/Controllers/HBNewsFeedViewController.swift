//
//  HBNewsFeedViewController.swift
//  MyAssistant
//
//  Created by Muhammed Shibili on 11/19/18.
//  Copyright © 2018 Habbubulli. All rights reserved.
//

import UIKit
import ObjectMapper
import SwiftyBeaver
import PromiseKit

class HBNewsFeedViewController: UIViewController {
    
    @IBOutlet var newsFeedCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // register
        newsFeedCollectionView.register(HBNewsFeedCollectionViewCell.self)
        newsFeedCollectionView.dataSource = self
       
        loadDataSource()
    }
    
    private func loadDataSource() {
        HBAPIManager.shared.getGlossary().done { (glossaryItem) in
            guard let glossaryTitle = glossaryItem.title else { return }
            SwiftyBeaver.info(glossaryTitle)
            } .catch { (error) in
                SwiftyBeaver.error(error.localizedDescription)
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

