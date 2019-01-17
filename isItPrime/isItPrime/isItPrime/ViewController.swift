//
//  ViewController.swift
//  isItPrime
//
//  Created by Bret McGee on 2018-06-05.
//  Copyright © 2018 Bret McGee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var userInput: UITextField!
    
    @IBOutlet weak var outputLabel: UILabel!
    
    @IBAction func checkButton(_ sender: Any) {
        
        if let userEnteredString = userInput.text {
            
            let userEnteredInteger = Int(userEnteredString)
            
            if let number = userEnteredInteger {
                
                var isPrime = true
                
                if number == 1 {
                    
                    isPrime = false
                    
                }
                
                var i = 2
                
                while i < number {
                    
                    if number % i == 0 {
                        
                        isPrime = false
                        
                    }
                    
                    i += 1
                    
                }
                
                if isPrime {
                    
                    outputLabel.text = "\(number) is a Prime Number"
                    outputLabel.textColor = UIColor.green
                    DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(4), execute: {
                        self.outputLabel.text = ""
                    })
                    
                } else {
                    
                    outputLabel.text = "\(number) is NOT a Prime Number"
                    outputLabel.textColor = UIColor.yellow
                    DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(4), execute: {
                        self.outputLabel.text = ""
                    })
                }
                
            } else {
                
                outputLabel.text = "Please enter a positive whole number"
                outputLabel.textColor = UIColor.red
                
            }
            
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

