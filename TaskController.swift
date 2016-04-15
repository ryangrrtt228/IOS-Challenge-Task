//
//  TaskController.swift
//  IOS-Challenge-Task
//
//  Created by Batman on 4/15/16.
//  Copyright © 2016 Ryan Garrett. All rights reserved.
//

import Foundation
import CoreData


class TaskController {
    
    static let sharedController = TaskController()
    
    var tasks: [Task] {
        let context = Stack.sharedStack.managedObjectContext
        let request = NSFetchRequest(entityName: "Task")
        let task = (try? context.executeFetchRequest(request)) as? [Task]
        return task ?? []
    
    }
    
    func completedTask() -> [Task] {
        return tasks.filter({$0.isComplete.boolValue})
        
    }
    
    func incompletedTask() -> [Task] {
        return tasks.filter({$0.isComplete.boolValue})
        
    }
    
    func addTask(task: Task) {
        saveToPersistantStore()
    }
    
    func removeTask(task: Task) {
        task.managedObjectContext?.deleteObject(task)
        saveToPersistantStore()
        
        
    }
    
    func saveToPersistantStore() {
        let _ = try? Stack.sharedStack.managedObjectContext.save()
        
        
    }
}
