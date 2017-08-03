//
//  round.swift
//  buttonCircles
//
//  Created by studio on 10/07/17.
//  Copyright © 2017 studio. All rights reserved.
//

import UIKit

@IBDesignable
class round: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderColor: UIColor = .clear {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var borderwidth: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = borderwidth
        }
    }
    
}
