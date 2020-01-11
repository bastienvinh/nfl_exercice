//
//  TeamViewController.swift
//  nflexercice
//
//  Created by Bastien VINH on 11/01/2020.
//  Copyright © 2020 Bastien VINH. All rights reserved.
//

import UIKit

class TeamViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    var teams = TeamManager().getAllTeam()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        let width = collectionView.frame.width / 2 - 10
        
        collectionView.collectionViewLayout = TeamCellCollectionViewFlowLayout(size: CGSize(width: width, height: 160), lineSpacing: 20, itemSpacing: 10, direction: .vertical, headerSize: nil)
    }
}

extension TeamViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return teams.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollecCell", for: indexPath) as? CollecCell {
            cell.setupCell(teams[indexPath.item])
            return cell
        }
        
        return UICollectionViewCell()
    }
    
    
    
}


