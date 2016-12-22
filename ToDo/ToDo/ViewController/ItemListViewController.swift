//
//  ItemListViewController.swift
//  ToDo
//
//  Created by Mark Siu on 16/10/2016.
//  Copyright © 2016 Mark Siu. All rights reserved.
//

import UIKit

class ItemListViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    @IBOutlet var dataProvider: (UITableViewDataSource & UITableViewDelegate)!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = dataProvider
        tableView.delegate = dataProvider
    }
    
    
    


}
