//
//  ViewController.swift
//  CheckList
//
//  Created by BT-Training on 26/08/16.
//  Copyright © 2016 BT-Training. All rights reserved.
//

import UIKit

class CheckListViewController: UITableViewController {
    
    var dataModel = [CheckList]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataModel.append(CheckList(withTitle : "Promener le chien"))
        dataModel.append(CheckList(withTitle : "Brosser mes dents"))
        dataModel.append(CheckList(withTitle : "etr cordial dans mes commentaires youtubes"))
        dataModel.append(CheckList(withTitle : "M'entrainer à beer pong"))
        dataModel.append(CheckList(withTitle : "Envahir la Russie"))

      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
}


extension CheckListViewController { // UITableViewDelegate

    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataModel.count
    }
    
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CheckListItem", forIndexPath: indexPath)
        
        let label = cell.viewWithTag(1000)
            as! UILabel
        let checkList = dataModel[indexPath.row]
        label.text = checkList.title
        cell.accessoryType = checkList.done ? .Checkmark : .None
        
        return cell
    }

    
}

extension CheckListViewController  { // UITableViewDataSource
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("clic")
        
        let checkList = dataModel[indexPath.row]
        checkList.done = !checkList.done
        
        tableView.reloadRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        
    
        
    }

    
}



