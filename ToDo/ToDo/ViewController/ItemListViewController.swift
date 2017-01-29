//
//  ItemListViewController.swift
//  ToDo
//
//  Created by Mark Siu on 29/1/2017.
//  Copyright © 2017 Mark Siu. All rights reserved.
//

import UIKit

class ItemListViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    @IBOutlet var dataProvider: (UITableViewDataSource & UITableViewDelegate)!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = dataProvider
        tableView.dataSource = dataProvider
    }

}
