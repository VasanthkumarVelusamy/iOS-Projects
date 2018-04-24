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
            savingsType.placeholder = String(describing: type)
        }
        if let amount = goal?.targetAmount {
            targetAmount.placeholder = String(describing: amount)
        }
        if let date = goal?.targetDate {
            targetDate.placeholder = String(describing: date)
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
            if let type = savingsType.text {
//                goal?.goalType.rawValue = type
            }
            if let amount = targetAmount.text {
//                goal?.targetAmount = Int(amount)!
            }
            if let date = targetDate.text {
               
            }
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension EditGoalsViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        modifyButton.title = "Save"
    }
}
