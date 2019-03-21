//
//  Task.swift
//  Vergnetti_Leo_Lab04
//
//  Created by Leo Vergnetti on 3/21/19.
//  Copyright © 2019 Leo Vergnetti. All rights reserved.
//

enum Priority{
    case Low
    case Medium
    case High
}

import Foundation

class Task : Equatable{
    static func == (lhs: Task, rhs: Task) -> Bool {
        return lhs.completed == rhs.completed && lhs.dueDate == rhs.dueDate && lhs.priority == rhs.priority && lhs.text == rhs.text
    }
    

    var text : String
    var dueDate : Date
    var priority : Priority
    var completed : Bool
    
    
    public init(text: String, dueDate: Date, priority: Priority, completed: Bool) {
        self.text = text
        self.dueDate = dueDate
        self.priority = priority
        self.completed = completed
        
    }
    
    public convenience init(text: String, dueDate: Date) {
        self.init(text: text, dueDate: dueDate, priority: Priority.Low, completed : false)
    }
    
    
}
