//
//  ViewController.swift
//  UserDefaults
//
//  Created by Harun Demirkaya on 20.12.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var noteTextField: UITextField!
    
    @IBOutlet weak var timeTextField: UITextField!
    
    @IBOutlet weak var noteLabel: UILabel!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let savedNote =  UserDefaults.standard.object(forKey: "note")
        let savedTime = UserDefaults.standard.object(forKey: "time")
        
        if let incomeNote = savedNote as? String{
            noteLabel.text = "Your Note: \(incomeNote)"
        }
        if let incomeTime = savedTime as? String{
            timeLabel.text = "When: \(incomeTime)"
        }
        
    }

    
    @IBAction func btnSave(_ sender: Any) {
        UserDefaults.standard.set(noteTextField.text!, forKey: "note")
        UserDefaults.standard.set(timeTextField.text!, forKey: "time")
        noteLabel.text = "Your Note: \(noteTextField.text!)"
        timeLabel.text = "When: \(timeTextField.text!)"
    }
    
    @IBAction func btnDelete(_ sender: Any) {
        let savedNote =  UserDefaults.standard.object(forKey: "note")
        let savedTime = UserDefaults.standard.object(forKey: "time")
        
        if (savedNote as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "note")
            noteLabel.text = "Your Note: "
        }
        
        if (savedTime as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "time")
            timeLabel.text = "When: "
        }
    }
}

