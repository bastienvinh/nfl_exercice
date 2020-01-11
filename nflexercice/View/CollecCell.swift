//
//  CollecCell.swift
//  nflexercice
//
//  Created by Bastien VINH on 11/01/2020.
//  Copyright © 2020 Bastien VINH. All rights reserved.
//

import UIKit

class CollecCell: UICollectionViewCell {
    
    @IBOutlet weak var imageview: RoundedImage!
    @IBOutlet weak var nameLbl: UILabel!
    
    
    func setupCell(_ team: Team) {
        imageview.image = UIImage(named: team.code)
        nameLbl.text = "\(team.city) \(team.name)"
    }
}
