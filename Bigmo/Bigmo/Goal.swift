//
//  Goal.swift
//  Bigmo
//
//  Created by Vasanthkumar V on 24/04/18.
//  Copyright © 2018 appco. All rights reserved.
//

import Foundation
import UIKit

class Goal {
    var goalName: String
    var goalType = "Savings"
    var image: UIImage?
    var caption: String
    var targetAmount: Int
    var currentSavings: Int
    var startDate: String
    var targetDate: String
    var projectedDate: String
  
    init(goalName: String, goalType: String, imageName: String?, caption: String, targetAmount: Int, currentSavings: Int, startDate: String, targetDate: String, projectedDate: String) {
        self.goalName = goalName
        self.goalType = goalType
        self.caption = caption
        self.targetAmount = targetAmount
        self.currentSavings = currentSavings
        self.startDate = startDate
        self.targetDate = targetDate
        self.projectedDate = projectedDate
        if let imageName = imageName {
            if let iconImage = UIImage(named: imageName) {
                image = iconImage
            }
        }
        
    }

}

