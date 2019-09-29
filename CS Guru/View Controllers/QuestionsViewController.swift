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
    
    var selectedOption = [Int : Int]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func submitAnswers(_ sender: DesignableButton) {
        
        if selectedOption.count == questionsList.count {
            self.performSegue(withIdentifier: "ResultVC", sender: sender)
        } else {
            let alert = UIAlertController(title: "Warning!", message: "Please answer all questions", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "cancel", style: .cancel, handler: nil))
            self.present(alert, animated: true)
        }
        
        
    }
    
    // Section
    func numberOfSections(in tableView: UITableView) -> Int {
        return questionsList.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return questionsList[section]
    }
    
    // Rows in the section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return choicesList[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.textLabel?.text = choicesList[indexPath.section][indexPath.row]
            
        return cell
    }
    

    // Check or un-check an option from list
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let section = indexPath.section

        if selectedOption[section] != nil {
            let previousSelection = selectedOption[section]
            selectedOption.removeValue(forKey: section)
            tableView.cellForRow(at: [section, previousSelection!])?.accessoryType = .none
            //return
        }
        selectedOption.updateValue(indexPath.row, forKey: section)
        tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark

    }
    
    // Show the selected options when scrolling up or down
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        for item in selectedOption {
            tableView.cellForRow(at: [item.key, item.value])?.accessoryType = .checkmark
        }
    }

}
