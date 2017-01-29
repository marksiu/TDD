//
//  ItemListViewControllerTest.swift
//  ToDo
//
//  Created by Mark Siu on 29/1/2017.
//  Copyright © 2017 Mark Siu. All rights reserved.
//

import XCTest

@testable import ToDo

class ItemListViewControllerTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_TableView_AfterViewDidLoad_IsNotNil() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "ItemListViewController")
        let sut = viewController as! ToDo.ItemListViewController
        
        _ = sut.view // tigger viewDidLoad()
        
        XCTAssertNotNil(sut.tableView)
    }
    
}
