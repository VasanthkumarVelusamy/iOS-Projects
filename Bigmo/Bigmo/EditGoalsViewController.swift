//
//  EditGoalsViewController.swift
//  Bigmo
//
//  Created by Vasanthkumar V on 24/04/18.
//  Copyright © 2018 appco. All rights reserved.
//

import UIKit

class EditGoalsViewController: UIViewController {

    @IBOutlet weak var savingsType: UITextField!
    @IBOutlet weak var targetAmount: UITextField!
    @IBOutlet weak var targetDate: UITextField!
    
    @IBOutlet weak var modifyButton: UIBarButtonItem!
    
    var goal: Goal?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let type = goal?.goalType {
            savingsType.text = String(describing: type)
        }
        if let amount = goal?.targetAmount {
            targetAmount.text = String(describing: amount)
        }
        if let date = goal?.targetDate {
            print("date is : \(date)")
            targetDate.text = String(describing: date)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func modifyButtonTapped(_ sender: UIBarButtonItem) {
        savingsType.isEnabled = true
        targetAmount.isEnabled = true
        targetDate.isEnabled = true
        if sender.title == "Save" {
            if let type = savingsType?.text {
                goal?.goalType = type
            }
            if let stringAmount = targetAmount?.text, let intAmount = Int(stringAmount) {
                goal?.targetAmount = intAmount
            }
            if let date = targetDate.text {
                goal?.targetDate = date
            }
            showAlert()
        }
    }

    @IBAction func cancelButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func showAlert() {
        let alert = UIAlertController(title: "Are you done?", message: "Have you completed modifying this goal?", preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "Yes, take me to the previous screen", style: UIAlertActionStyle.default, handler: {
            (_)in
            self.dismiss(animated: true, completion: nil)
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: {
        (_)in
            
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
}

extension EditGoalsViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        modifyButton.title = "Save"
    }
}
