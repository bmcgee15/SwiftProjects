//
//  ViewController.swift
//  permanent data storage
//
//  Created by Bret McGee on 2018-06-18.
//  Copyright © 2018 Bret McGee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // UserDefaults.standard.set("bret", forKey: "name") // AFTER COMMENTING OUT IT HAS STILL SAVED THE NAME INTO THE PHONES MEMORY
        
        let nameObject = UserDefaults.standard.object(forKey: "name")
        
        
        // super type safe now, doesn't show optional
        if let name = nameObject as? String {
            
         print(name)
            
        }
    
        let arr = [1, 2, 3, 4]
        
        // UserDefaults.standard.set(arr, forKey: "array") // now commented out its still saved!! super cool
        
        let arrayObject = UserDefaults.standard.object(forKey: "array")
        
        if let array = arrayObject as? NSArray {
            
            print(array)
            
        }
        
    }


}

