//
//  MainViewController.swift
//  CS Guru
//
//  Created by TN007 on 9/25/19.
//  Copyright © 2019 Tarabi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "LOGOUT", style: .done, target: self, action: #selector(addTask))

    }
    
    @objc func addTask() {
        
    }

}
