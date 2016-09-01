//
//  TableViewController.swift
//  SlapChat
//
//  Created by susan lovaglio on 7/16/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var managedMessageObjects: [Message] = []
    let store: DataStore = DataStore()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        store.fetchData()
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        
        store.fetchData()
        tableView.reloadData()
        
    }
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return store.messages.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("basicCell", forIndexPath: indexPath)
        
        let eachMessage = store.messages[indexPath.row]
        
        cell.textLabel?.text = eachMessage.content
        
        return cell
    }
}
