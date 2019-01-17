//
//  ViewController.swift
//  eggTimer
//
//  Created by Bret McGee on 2018-06-07.
//  Copyright © 2018 Bret McGee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Output: UILabel!
    
    var timer = Timer()
    
    var time = 0
    
    @objc func processTimer() {
        
        time += 1
        Output.text = String(time)
        
    }
    
    @IBAction func start(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func pause(_ sender: Any) {
        
        timer.invalidate()
        
    }
    
    @IBAction func refresh(_ sender: Any) {
        
        time = 0
        
    Output.text = String(time)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }


}

