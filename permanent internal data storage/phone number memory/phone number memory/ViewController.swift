//
//  ViewController.swift
//  phone number memory
//
//  Created by Bret McGee on 2018-06-18.
//  Copyright © 2018 Bret McGee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var outputLabel: UILabel!
    
    @IBOutlet weak var mainTextField: UITextField!
    
    @IBAction func saveButton(_ sender: Any) {
        
        UserDefaults.standard.set(mainTextField.text, forKey: "number")
        
        let numberObject = UserDefaults.standard.object(forKey: "number")
        
        if let tele = numberObject as? String {
            
            outputLabel.text = "Your number is \(tele)"
            
        }
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let numberObject = UserDefaults.standard.object(forKey: "number")
        
        if let tele = numberObject as? String {
            
            outputLabel.text = "Your number is \(tele)"
            
        }
        
    }


}

