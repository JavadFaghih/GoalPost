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
    
    
    func configureCell(goal: String, type: String, amount: Int) {
        
        goalDescription.text = goal
        goalTypeLbl.text = type
        goalAmount.text = "\(amount)"
        
    }
    
    
    
}
