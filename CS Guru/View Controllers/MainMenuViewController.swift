//
//  MainMenuViewController.swift
//  CS Guru
//
//  Created by TN007 on 9/25/19.
//  Copyright © 2019 Tarabi. All rights reserved.
//

import UIKit

class MainMenuViewController: ViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func about(_ sender: UIButton) {
        let alert = UIAlertController(title: "About CS Guru v1.0", message: "\nAre you sure?\n\nAbderisaq Tarabi", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "Close", style: .cancel, handler: nil))

        self.present(alert, animated: true)
    }

}
