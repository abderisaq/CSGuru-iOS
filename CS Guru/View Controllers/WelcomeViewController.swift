//
//  WelcomeViewController.swift
//  CS Guru
//
//  Created by TN007 on 9/26/19.
//  Copyright © 2019 Tarabi. All rights reserved.
//

import UIKit

class WelcomeViewController: ViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }

}
