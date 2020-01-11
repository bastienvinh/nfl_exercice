//
//  RoundedImage.swift
//  nflexercice
//
//  Created by Bastien VINH on 11/01/2020.
//  Copyright © 2020 Bastien VINH. All rights reserved.
//

import UIKit

class RoundedImage: UIImageView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    func setup() {
        clipsToBounds = true
        layer.cornerRadius = frame.width / 2
        backgroundColor = UIColor.white
    }

}
