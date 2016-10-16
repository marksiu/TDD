//
//  ToDoItem.swift
//  ToDo
//
//  Created by Mark Siu on 15/10/2016.
//  Copyright © 2016 Mark Siu. All rights reserved.
//

import Foundation

struct ToDoItem:Equatable {
    let title: String
    let itemDescription: String?
    let timestamp: Double?
    let location: Location?
    
    init(title: String, itemDescription: String? = nil, timestamp: Double? = nil, location: Location? = nil) {
        self.title = title
        self.itemDescription = itemDescription
        self.timestamp = timestamp
        self.location = location
    }
}

extension ToDoItem {
    static func == (lhs: ToDoItem, rhs: ToDoItem) -> Bool {
        if (lhs.title != rhs.title) {
            return false
        }
        
        if (lhs.itemDescription != rhs.itemDescription) {
            return false
        }
        
        if (lhs.location?.name != rhs.location?.name) {
            return false
        }
        
        if (lhs.timestamp != rhs.timestamp) {
            return false
        }
        
        return true
    }
}


