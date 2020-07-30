//
//  GoalCell.swift
//  GoalPost
//
//  Created by javad faghih on 5/4/1399 AP.
//

import UIKit

class GoalCell: UITableViewCell {

  
    @IBOutlet weak var goalDescription: UILabel!
    @IBOutlet weak var goalTypeLbl: UILabel!
    @IBOutlet weak var goalAmount: UILabel!
    @IBOutlet weak var completionView: UIView!
    
    
    func configureCell(goal:Goal) {
        
        goalDescription.text = goal.goalDescription!
        goalTypeLbl.text = goal.goalType
        goalAmount.text = "\(goal.goalProgress)"
        
        
        if goal.goalProgress == goal.goalComplationValue {
            
            self.completionView.isHidden = false
            
            
        } else{
            self.completionView.isHidden = true
    }
   
    }
}
