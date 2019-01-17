//
//  FirstViewController.swift
//  unity
//
//  Created by Bret McGee on 2018-06-25.
//  Copyright © 2018 Bret McGee. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var table: UITableView!
    
    @IBOutlet weak var refresh: UITableView!
    
    var items:NSMutableArray = []
    
    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return items.count
        
    }
    
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
        
        var cellLabel = ""
        
        if let tempLabel = items[indexPath.row] as? String{
         
            cellLabel = tempLabel
            
        }
            
        cell.textLabel?.text = cellLabel
        
        return cell
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        print("View did Appear")
        
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        if let tempItems = itemsObject as? NSMutableArray {
            
            items = tempItems
        }

        print("reloading")
        refresh.reloadData()
        
    }
    
}

