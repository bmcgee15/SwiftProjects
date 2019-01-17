//
//  ViewController.swift
//  howManyFingers
//
//  Created by Bret McGee on 2018-05-30.
//  Copyright © 2018 Bret McGee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var TextField: UITextField!
    
    @IBOutlet weak var Label: UILabel!
    
    @IBAction func Guess(_ sender: Any) {
        
        let diceRoll = String(arc4random_uniform(6))
        let myGuess = TextField.text
        if myGuess == diceRoll{
            
            Label.text = "You Guessed Right!"
            
        } else {
            
            Label.text = " You Guessed Wrong!"
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

