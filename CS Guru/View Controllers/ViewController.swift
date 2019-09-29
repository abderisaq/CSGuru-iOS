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

        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "LOGOUT", style: .done, target: self, action: #selector(logout))
        
        view.backgroundColor = UIColor.white
        

    }
    
    @objc func logout() {
        
        //self.dismiss(animated: true, completion: {});
        //self.navigationController!.popViewController(animated: true);
        
        //self.navigationController!.popToRootViewController(animated: true)
        
        //self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)

        if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
            appDelegate.window?.rootViewController?.dismiss(animated: true, completion: nil)
            (appDelegate.window?.rootViewController as? UINavigationController)?.popToRootViewController(animated: true)
        }
    }

}
