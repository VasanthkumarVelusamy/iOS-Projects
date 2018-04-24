//
//  GoalViewController.swift
//  Bigmo
//
//  Created by Vasanthkumar V on 24/04/18.
//  Copyright © 2018 appco. All rights reserved.
//

import UIKit

class GoalViewController: UIViewController {

    var goal: Goal?
    
    @IBOutlet weak var goalImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        goalImage.image = goal?.image
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "EditGoalSegue" {
            let controller = segue.destination as! EditGoalsViewController
            controller.goal = goal
        }
    }
    
}
