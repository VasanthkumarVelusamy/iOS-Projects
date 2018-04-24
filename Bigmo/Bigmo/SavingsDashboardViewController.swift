//
//  ViewController.swift
//  Bigmo
//
//  Created by Vasanthkumar V on 24/04/18.
//  Copyright © 2018 appco. All rights reserved.
//

import UIKit

class SavingsDashboardViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var goals = [Goal]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        goals = createGoals()
    }

    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    func createGoals() -> [Goal] {
//
//        let formatter = DateFormatter()
//        formatter.dateFormat = "MM/yy"
        
        let mba = Goal(goalName: "SUSEI'S MBA", goalType: "Savings", imageName: "biology.png", caption: "Way to Go!", targetAmount: 3500, currentSavings: 1600, startDate: "01/17",targetDate: "12/18", projectedDate: "3/19")
        
        let audi = Goal(goalName: "AUDI A3", goalType: "Savings", imageName: "car_calculation.png", caption: "Awesome ! Keep saving", targetAmount: 12500, currentSavings: 4900, startDate: "01/17", targetDate: "06/19", projectedDate: "11/19")
        
        let macy = Goal(goalName: "MACY & I", goalType: "Savings", imageName: "retirement_planning.png", caption: "Well Begun is half done. Keep at it !", targetAmount: 6000, currentSavings: 600, startDate: "12/17", targetDate: "12/19", projectedDate: "12/19")
        
        return [mba, audi, macy]
    }
}

extension SavingsDashboardViewController : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return goals.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let goal = goals[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "GoalCell", for: indexPath) as! GoalCell
        cell.setGoal(goal: goal)
        
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoalViewSegue" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let controller = segue.destination as! GoalViewController
                let goal = goals[indexPath.row]
                controller.goal = goal
            }
        }
    }
}

