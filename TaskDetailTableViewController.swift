//
//  TaskDetailTableViewController.swift
//  IOS-Challenge-Task
//
//  Created by Batman on 4/15/16.
//  Copyright © 2016 Ryan Garrett. All rights reserved.
//

import UIKit

class TaskDetailTableViewController: UITableViewController {
    
    var task: Task?
    
    
    @IBOutlet weak var nameTaskTextField: UITextField!
    @IBOutlet weak var dueDateTextField: UITextField!
    @IBOutlet weak var notesTextField: UITextView!
    @IBOutlet weak var saveTaskButton: UIBarButtonItem!
    @IBOutlet var datePicker: UIDatePicker!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
         dueDateTextField.inputView = datePicker
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func saveButtonTapped(sender: AnyObject) {
       
        
    }
    
    @IBAction func cancelButtonPressed(sender: AnyObject) {
        
    }
    

    // MARK: - Table view data source

    

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

        func updateTask() {
            
            let name = nameTaskTextField.text!
            let due = datePicker
            let notes = notesTextField.text
            
        }

    
    
    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */



}
