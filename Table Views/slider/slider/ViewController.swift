//
//  ViewController.swift
//  slider
//
//  Created by Bret McGee on 2018-06-18.
//  Copyright © 2018 Bret McGee. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var table: UITableView!
    
    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 50
        
    }
    
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = String((indexPath.row + 1) * Int(sliderOutlet.value * 20))
        
        return cell
        
    }
    
    @IBAction func sliderAction(_ sender: Any) {
        
        print(sliderOutlet.value)
        
        mainLabel.text = "You are viewing the \(Int(sliderOutlet.value * 20)) times table"
        
        table.reloadData()
        
    }
    
    @IBOutlet weak var sliderOutlet: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

