//
//  ViewController.swift
//  materialCostCalculator
//
//  Created by Bret McGee on 2018-07-15.
//  Copyright © 2018 Bret McGee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lengthInput: UITextField!
    
    @IBOutlet weak var widthInput: UITextField!
    
    @IBOutlet weak var colorInput: UITextField!
    
    @IBOutlet weak var output: UILabel!
    var cost = 0.0
    var length = 0.0
    var width = 0.0
    var colorNum = 1.0
    var costPSI = 0.018
    var squareInches = 0.0
    
    @IBAction func calculate(_ sender: Any) {
        length = Double(lengthInput.text!)!
        width = Double(widthInput.text!)!
        colorNum = Double(colorInput.text!)!
        squareInches = length * width
        cost = (squareInches * costPSI) * colorNum
        output.text = "The total cost is $\(cost)"
    }
    
    @IBOutlet weak var costOutput: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

