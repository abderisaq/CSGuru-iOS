//
//  QuestionsViewController.swift
//  CS Guru
//
//  Created by TN007 on 9/26/19.
//  Copyright © 2019 Tarabi. All rights reserved.
//

import UIKit

class QuestionsViewController: ViewController, UITableViewDelegate, UITableViewDataSource {
    
    let questionsList = ["Algorithm", "Data Structures", "C#", "PHP"]
    let choicesList = [["Cheese", "Cat", "Egg"], ["Fanta", "Lift", "Coke"], ["Cheese", "Cat", "Egg"], ["Fanta", "Lift", "Coke"]]
    
    var selectedElement = [Int : String]()
    
    @IBOutlet weak var tableView: UITableView!
    
//    let selectedRow
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // Section
    func numberOfSections(in tableView: UITableView) -> Int {
        return questionsList.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return questionsList[section]
    }
    
    // Sub-section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return choicesList[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.textLabel?.text = choicesList[indexPath.section][indexPath.row]
        
//        "Options number \(1 + indexPath.row % 5)"
        
        return cell
    }
    

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let section = indexPath.section
        let data = choicesList[section][indexPath.row]

//        if let previousItem = selectedElement[section] {
//            if previousItem == data {
//                selectedElement.removeValue(forKey: section)
//                return
//            }
//        }
//        selectedElement.updateValue(data, forKey: section)


//        if tableView.cellForRow(at: indexPath)?.accessoryType == UITableViewCell.AccessoryType.checkmark {
        
        if selectedElement[section] == nil {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
            selectedElement.updateValue(data, forKey: section)
            tableView.deselectRow(at: indexPath, animated: true)
        } else {
            // re-draw
            
            // un-Check the current
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
            selectedElement.removeValue(forKey: section)
            tableView.deselectRow(at: indexPath, animated: true)
        }
        
        
//        if selectedElement[section] == data {
//            tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCell.AccessoryType.none
//            selectedElement.removeValue(forKey: section)
//            tableView.deselectRow(at: indexPath, animated: true)
//        } else {
//            tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCell.AccessoryType.checkmark
//            selectedElement.updateValue(data, forKey: section)
//            tableView.deselectRow(at: indexPath, animated: true)
//        }

        print(selectedElement)
    }
    
    
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let section = indexPath.section
//        let data = choicesList[section][indexPath.row]
//        selectedElement.updateValue(data, forKey: section)
//        tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCell.AccessoryType.checkmark
//        print(selectedElement)
//    }
//
//    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
//        let section = indexPath.section
//        selectedElement.removeValue(forKey: section)
//        tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCell.AccessoryType.none
//        print(selectedElement)
//    }
    

    
    

}
