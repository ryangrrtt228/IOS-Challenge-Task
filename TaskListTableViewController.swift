//
//  TaskListTableViewController.swift
//  IOS-Challenge-Task
//
//  Created by Batman on 4/15/16.
//  Copyright © 2016 Ryan Garrett. All rights reserved.
//

import UIKit

class TaskListTableViewController: UITableViewController {
    
    
    static let sharedController = TaskListTableViewController()
    
    
    override func viewDidAppear(animated: Bool) {
        tableView.reloadData()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return TaskController.sharedController.incompletedTask().count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("taskCell", forIndexPath: indexPath)
        _ = TaskController.sharedController.tasks[indexPath.row]
        cell.textLabel?.text
        
        return cell
    }
    
    
    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            
            let task = TaskController.sharedController.incompletedTask[indexPath.row]
            TaskController.sharedController.removeTask(task)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
            
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "toTaskDetail" {
            let destinationController = segue.destinationViewController as? TaskDetailTableViewController
            
            if let TaskDetailTableViewController = destinationController {
                
                _ = TaskDetailTableViewController.view
                
                if let selectedRow = tableView.indexPathForSelectedRow?.row {
                    
                    TaskDetailTableViewController.updateWithTask(TaskController.sharedController.incompletedTask(selectedRow))
                }
                
            }
            
        }
        
    }
    
}
