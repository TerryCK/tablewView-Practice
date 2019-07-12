//
//  ViewController.swift
//  TableViewRetainCycle
//
//  Created by Terry Chen on 2019/7/11.
//  Copyright © 2019 TerryChen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UIApplication.shared.delegate?.window??.rootViewController = TableViewController(nibName: "TableViewController", bundle: nil)
        
    }


}

