//
//  ViewController.swift
//  Checklists
//
//  Created by Alistair Wye on 03/01/2017.
//  Copyright © 2017 wyedawg. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        
        let cell = tableView.dequeueReusableCell(
                            withIdentifier: "Checklistitem", for: indexPath)
        
        let label = cell.viewWithTag(1000) as! UILabel
        
        if indexPath.row == 0 {
            label.text = "Walk the dog"
        } else if indexPath.row == 1 {
            label.text = "Brush my teeth"
        } else if indexPath.row == 2 {
            label.text = "Learn iOS Development"
        } else if indexPath.row == 3 {
            label.text = "Soccer practice"
        } else if indexPath.row == 4 {
            label.text = "Eat ice cream"
        }

        return cell
    
    }
    
}

