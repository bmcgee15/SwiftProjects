//
//  ViewController.swift
//  keyboardController
//
//  Created by Bret McGee on 2018-06-25.
//  Copyright © 2018 Bret McGee. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // This function makes makes something happen when the user touches outsite of the text field.
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)// makes the keyboard disapear
        
    }

    // This function makes makes something happen when the user hits the return key.
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()// makes the keyboard disapear
        
        return true
        
    }
    
}

