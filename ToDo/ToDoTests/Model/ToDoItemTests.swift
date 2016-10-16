//
//  ToDoItemTests.swift
//  ToDo
//
//  Created by Mark Siu on 15/10/2016.
//  Copyright © 2016 Mark Siu. All rights reserved.
//

import XCTest

// add this line to make sure the text class can access to project
@testable import ToDo

class ToDoItemTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testInit_ShouldSetTitle() {
        let item = ToDoItem(title: "Test title")
        
        XCTAssertEqual(item.title, "Test title", "Initializer should set the item title")
    }
    
    func testInit_ShouldSetTitleAndDescription() {
        let item = ToDoItem(title: "Test title", itemDescription: "Test description")
        
        XCTAssertEqual(item.itemDescription, "Test description", "Initializer should set the item description")
    }
    
    func testInit_ShouldSetTitleAndDescriptionAndTimestamp() {
        let item = ToDoItem(title: "Test title", itemDescription: "Test description", timestamp: 0.0)
        
        XCTAssertEqual(0.0, item.timestamp, "Initializer should set the item timestamp")
    }
    
    func testInit_ShouldSetTitleAndDescriptionAndTimestampAndLocation() {
        let location = Location(name: "Test name")
        let item = ToDoItem(title: "Test title", itemDescription: "Test description", timestamp: 0.0, location: location)
        
        XCTAssertEqual(location.name, item.location?.name, "Initializer should set the location")
    }
    
    // The test is nolonger valid due to the requirement updated
    // check func testWhenTitleDifferes_ShouldBeNotEqual() {}
//    func testEqualItems_ShouldBeEqual() {
//        let firstItem = ToDoItem(title: "First")
//        let secondItem = ToDoItem(title: "Second")
//        
//        XCTAssertEqual(firstItem, secondItem)
//    }
    
    func testWhenLocationDifferes_ShouldBeNotEqual() {
        let firstItem = ToDoItem(title: "First title", itemDescription: "First description", timestamp: 0.0, location: Location(name: "Home"))
        let secondItem = ToDoItem(title: "Second title", itemDescription: "Second description", timestamp: 0.0, location: Location(name: "Office"))
        
        XCTAssertNotEqual(firstItem, secondItem)
    }
    
    func testWhenOneLocationIsNilAndTheOtherIsnt_ShouldBeNotEqual() {
        let firstItem = ToDoItem(title: "First title", itemDescription: "First description", timestamp: 0.0, location: nil)
        let secondItem = ToDoItem(title: "First title", itemDescription: "First description", timestamp: 0.0, location: Location(name: "Office"))
        
        XCTAssertNotEqual(firstItem, secondItem)
    }
    
    func testWhenTimestampDifferes_ShouldBeNotEqual() {
        let firstItem = ToDoItem(title: "First title", itemDescription: "First description", timestamp: 1.0)
        let secondItem = ToDoItem(title: "First title", itemDescription: "First description", timestamp: 0.0)
        
        XCTAssertNotEqual(firstItem, secondItem)
    }
    
    func testWhenDescriptionDifferes_ShouldBeNotEqual() {
        let firstItem = ToDoItem(title: "First title", itemDescription: "First description")
        let secondItem = ToDoItem(title: "First title", itemDescription: "Second description")
        
        XCTAssertNotEqual(firstItem, secondItem)
    }
    
    func testWhenTitleDifferes_ShouldBeNotEqual() {
        let firstItem = ToDoItem(title: "First title")
        let secondItem = ToDoItem(title: "Second title")
        
        XCTAssertNotEqual(firstItem, secondItem)
    }
}
