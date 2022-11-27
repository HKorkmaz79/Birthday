//
//  ViewController.swift
//  BirthDay
//
//  Created by Hakan Korkmaz on 25.11.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameText: UITextField!
    
    @IBOutlet weak var dateText: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedDate = UserDefaults.standard.object(forKey: "date")
        
        if let newName = storedName as? String {
            nameLabel.text = "Name: \(newName)"
        }
        if let newDate = storedDate as? String {
            dateLabel.text = "Birthday: \(newDate)"
        }
    }
    
    @IBAction func saveClicked(_ sender: Any) {
        UserDefaults.standard.set(nameText.text, forKey: "name")
        UserDefaults.standard.set(dateText.text, forKey: "date")
        
        nameLabel.text = "Name: \(nameText.text!)"
        dateLabel.text = "Birthday: \(dateText.text!)"
    }
    
    @IBAction func deleteClicked(_ sender: Any) {
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedDate = UserDefaults.standard.object(forKey: "date")
        
        if (storedName as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "name")

        }
        if (storedDate as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "date")
        }
    }
    
    
}
