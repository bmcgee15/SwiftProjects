//
//  SecondViewController.swift
//  unity
//
//  Created by Bret McGee on 2018-06-25.
//  Copyright © 2018 Bret McGee. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var ItemTextField: UITextField!
    
    @IBAction func add(_ sender: AnyObject) {
        
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        
        var items:[String]
        
        if let tempItems = itemsObject as? [String] {
            
            items = tempItems
            
            items.append(ItemTextField.text!)
            
            print(items)
            
        } else {
            
            items = [ItemTextField.text!]
            
        }
        
        UserDefaults.standard.set(items, forKey: "items")
        
        ItemTextField.text = ""
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}

