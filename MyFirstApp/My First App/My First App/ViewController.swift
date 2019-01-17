//
//  ViewController.swift
//  My First App
//
//  Created by Bret McGee on 2018-05-01.
//  Copyright © 2018 Bret McGee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func SubmitButton(_ sender: Any) {
        
        if textField.text == "" || emailField.text == "" || addressField.text == "" || cityField.text == "" || postalCodeField.text == "" || phoneNumberField.text == ""  {
            SuccessOrDenied.text = "Please Fill All Fields!"
            SuccessOrDenied.textColor = UIColor.red
        }else{
            SuccessOrDenied.text = "Form Submission Successful!"
            SuccessOrDenied.textColor = UIColor.green
            if let _: String = textField.text {
            }
            textField.text = ""
            lastNameField.text = ""
            emailField.text = ""
            addressField.text = ""
            cityField.text = ""
            postalCodeField.text = ""
            phoneNumberField.text = ""
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(4), execute: {
                self.SuccessOrDenied.text = ""
                self.SuccessOrDenied.textColor = UIColor.black
            })
        }
    }
    
    @IBOutlet weak var SuccessOrDenied: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var lastNameField: UITextField!
    
    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var addressField: UITextField!
    
    @IBOutlet weak var cityField: UITextField!
    
    @IBOutlet weak var postalCodeField: UITextField!
    
    @IBOutlet weak var phoneNumberField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

