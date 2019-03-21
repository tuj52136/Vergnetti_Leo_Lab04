//
//  main.swift
//  Vergnetti_Leo_Lab04
//
//  Created by Leo Vergnetti on 3/21/19.
//  Copyright © 2019 Leo Vergnetti. All rights reserved.
//

import Foundation

let taskList = TaskList()
for i in 1 ... 3{
    var priority = Priority.Low
    switch i{
    case 1:
        priority = Priority.Low
    case 2:
        priority = Priority.Medium
    case 3:
        priority = Priority.High
    default:
        priority = Priority.Low
    }
    for _ in 1 ... 4 {
        let task = Task(text: "Low Priority Task", dueDate: Date(), priority: priority, completed: false)
        if(!taskList.add(task: task)){
            print("Added Task \(task.text)")
        }
    }
}


taskList.incompleteTasks().forEach{print($0.text)}
