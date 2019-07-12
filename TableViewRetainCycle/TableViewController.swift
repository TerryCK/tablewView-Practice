//
//  TableViewController.swift
//  TableViewRetainCycle
//
//  Created by Terry Chen on 2019/7/11.
//  Copyright © 2019 TerryChen. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    var completionHandler: (() -> Void)?
}

class TableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "cellID")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    var value = "value"
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath) as! TableViewCell
        cell.textLabel?.text = "cell label"
        cell.completionHandler = {
            self.value = "Change"
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewController = TableViewController(nibName: "TableViewController",bundle: nil)
        navigationController?.setViewControllers([viewController], animated: true)
    }
}



