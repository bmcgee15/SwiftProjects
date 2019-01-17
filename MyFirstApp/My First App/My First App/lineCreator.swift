//
//  lineCreator.swift
//  My First App
//
//  Created by Bret McGee on 2018-05-12.
//  Copyright © 2018 Bret McGee. All rights reserved.
//

import UIKit

class lineCreator: UIView {


    var line = UIBezierPath()
    func graph(){
        line.move(to: .init(x: 0, y: bounds.height / 2))
        line.addLine(to: .init(x: bounds.width, y: bounds.height / 2))
        UIColor.lightGray.setStroke()
        line.lineWidth = 2
        line.stroke()
        
    }
    
    override func draw(_ rect: CGRect) {
        
        graph()

    }

}
