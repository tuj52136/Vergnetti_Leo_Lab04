//
//  TaskList.swift
//  Vergnetti_Leo_Lab04
//
//  Created by Leo Vergnetti on 3/21/19.
//  Copyright © 2019 Leo Vergnetti. All rights reserved.
//

import Foundation

class TaskList {
    
    private var listOfTasks = [Task]()
    
    var count : Int{
        get{
            return listOfTasks.count
        }
    }
    
//    Do we need?
    public init() {
        
    }
    
    public func completeTasks() -> [Task]{
       return listOfTasks.filter{$0.completed}
    }
    
    public func incompleteTasks() -> [Task]{
        return listOfTasks.filter{!$0.completed}
    }
    
    public func allTasks() -> [Task] {
        return listOfTasks
    }
    
    
    public func pastDueTasks() -> [Task] {
        let currentDate = Date()
        return listOfTasks.filter{$0.dueDate < currentDate}
    }
    
    public func tasksBetween(start : Date, and end : Date) -> [Task]{
        return listOfTasks.filter{$0.dueDate > start && $0.dueDate < end}
    }
    
    public func tasks(with p: Priority) -> [Task] {
        return listOfTasks.filter{$0.priority == p}
    }
    
    public func add(task: Task) -> Bool {
        listOfTasks.append(task)
        return listOfTasks.contains(task) ? true : false
    }
    
    public func removeAllTasks() {
        listOfTasks.removeAll()
    }
    
    public func remove(task: Task) -> Bool {
        var removed = false
        if let indexToRemove = listOfTasks.index(of: task){
            listOfTasks.remove(at: indexToRemove)
            removed = true
        }
        return removed
    }
    
    public func removeCompletedTasks() {
        listOfTasks = listOfTasks.filter{!$0.completed}
    }
}
