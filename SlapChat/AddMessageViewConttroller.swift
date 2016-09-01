//
//  AddMessageViewConttroller.swift
//  SlapChat
//
//  Created by John Hussain on 8/31/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class AddMessageViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBAction func saveButtonTapped(sender: AnyObject) {
        
        let store = DataStore()
        let newMessage = NSEntityDescription.insertNewObjectForEntityForName("Message", inManagedObjectContext: store.managedObjectContext) as! Message
        newMessage.content = textField.text
        newMessage.createdAt = NSDate()
        store.saveContext()
        dismissViewControllerAnimated(true, completion: nil)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
