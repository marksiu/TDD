//
//  ItemManager.swift
//  ToDo
//
//  Created by Mark Siu on 15/10/2016.
//  Copyright © 2016 Mark Siu. All rights reserved.
//

import Foundation

class ItemManager {
    var toDoCount:Int {
        return toDoItems.count
    }
    var doneCount:Int {
        return doneItems.count
    }
    private var toDoItems = [ToDoItem]()
    private var doneItems = [ToDoItem]()
    
    func addItem(item: ToDoItem) {
        if (!toDoItems.contains(item)) {
            toDoItems.append(item)
        }
    }
    
    func itemAtIndex(index: Int) -> ToDoItem {
        return toDoItems[index]
    }
    
    func checkItemAtIndex(index: Int) {
        let item = toDoItems.remove(at: index)
        doneItems.append(item)
    }
    
    func doneItemAtIndex(index: Int) -> ToDoItem {
        return doneItems[index]
    }
    
    func removeAllItems() {
        toDoItems.removeAll()
        doneItems.removeAll()
    }
}
