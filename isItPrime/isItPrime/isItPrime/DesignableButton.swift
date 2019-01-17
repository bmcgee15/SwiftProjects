//
//  DesignableButton.swift
//  isItPrime
//
//  Created by Bret McGee on 2018-06-06.
//  Copyright © 2018 Bret McGee. All rights reserved.
//

import UIKit

@IBDesignable

class DesignableButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 0{
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0{
        didSet{
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet{
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
}
