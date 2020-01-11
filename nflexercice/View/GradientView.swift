//
//  GradientView.swift
//  nflexercice
//
//  Created by Bastien VINH on 11/01/2020.
//  Copyright © 2020 Bastien VINH. All rights reserved.
//

import UIKit

class GradientView: UIView {
    
    override open class var layerClass: AnyClass {
       return CAGradientLayer.classForCoder()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        // TODO: continue to improve this into horizontal way
        
        let gradientLayer = layer as! CAGradientLayer
        gradientLayer.colors = [UIColor.white.cgColor, UIColor.systemBlue.cgColor]
    }

}
