//
//  ItemManagerTests.swift
//  ToDo
//
//  Created by Mark Siu on 15/10/2016.
//  Copyright © 2016 Mark Siu. All rights reserved.
//

import XCTest
@testable import ToDo

class ItemManagerTests: XCTestCase {
    
    // sut stands for System Under Test
    var sut: ItemManager!
    
    override func setUp() {
        super.setUp()
        sut = ItemManager()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testToDoCount_Initially_ShouldBeZero() {
//        let sut = ItemManager()
        XCTAssertEqual(sut.toDoCount, 0, "Initially toDo count should be 0")
    }
    
    func testDoneCount_Initially_ShouldBeZero() {
//        let sut = ItemManager()
        XCTAssertEqual(sut.doneCount, 0, "Initially done count should be 0")
    }
    
    func testToDoCount_AfterAddingOneItem_IsOne() {
        let item = ToDoItem(title: "Test title")
        sut.addItem(item: item)
        
        XCTAssertEqual(sut.toDoCount, 1, "toDoCount should be 1")
    }
    
    func testItemAtIndex_ShouldReturnReviouslyAddedItem() {
        let item = ToDoItem(title: "Item")
        sut.addItem(item: item)
        
        let returnedItem = sut.itemAtIndex(index: 0)
        
        XCTAssertEqual(returnedItem.title, item.title, "should be the same item")
    }
    
    func testCheckingItem_ChangesCountOfToDoAndOfDoneItems() {
        sut.addItem(item: ToDoItem(title: "First Item"))
        sut.checkItemAtIndex(index: 0)
        
        XCTAssertEqual(sut.toDoCount, 0, "toDoCount should be 0")
        XCTAssertEqual(sut.doneCount, 1, "doneCount should be 1")
    }
    
    func testCheckingItem_RemovesItFromTheToDoItemList() {
        let firstItem = ToDoItem(title: "First")
        let secondItem = ToDoItem(title: "Second")
        
        sut.addItem(item: firstItem)
        sut.addItem(item: secondItem)
        
        sut.checkItemAtIndex(index: 0)
        
        XCTAssertEqual(sut.itemAtIndex(index: 0).title, secondItem.title)
    }
    
    func testDoneItemAtIndex_ShouldReturnPreviouslyCheckedItem() {
        let item = ToDoItem(title: "First")
        
        sut.addItem(item: item)
        sut.checkItemAtIndex(index: 0)
        
        let returnedItem = sut.doneItemAtIndex(index: 0)
        
        XCTAssertEqual(returnedItem.title, item.title, "should be the same item")
    }
}
