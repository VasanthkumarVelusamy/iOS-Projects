//
//  GoalCellTableViewCell.swift
//  Bigmo
//
//  Created by Vasanthkumar V on 24/04/18.
//  Copyright © 2018 appco. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {
 
    @IBOutlet weak var goalImageView: UIImageView!
    @IBOutlet weak var goalName: UILabel!
    @IBOutlet weak var goalType: UILabel!
    @IBOutlet weak var caption: UILabel!
    @IBOutlet weak var goalStatus: UILabel!
    
    func setGoal(goal: Goal) {
        self.goalImageView.image = goal.image
        self.goalName.text = goal.goalName
        self.goalType.text = goal.goalType
        self.caption.text = goal.caption
        self.goalStatus.text = "€ \(goal.currentSavings) / \(goal.targetAmount)"
    }
}
