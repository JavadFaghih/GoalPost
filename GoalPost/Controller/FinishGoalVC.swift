//
//  GoalPointsVC.swift
//  GoalPost
//
//  Created by javad faghih on 5/6/1399 AP.
//

import UIKit
import CoreData


class FinishGoalVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var goalText: UITextField!
    @IBOutlet weak var creatGoalBtn: UIButton!
    
    
    var desription: String!
    var goalType: GoalType!
    
    func initData(desription: String, type: GoalType) {
        self.desription = desription
        self.goalType = type
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        goalText.inputAccessoryView = creatGoalBtn
        goalText.delegate = self

    }
    
    
    
    @IBAction func crateGoalWasTapped(_ sender: UIButton) {
        
        //Pass Data Into Core Data Goal Model
        if goalText.text != "" {
            self.save { (complete) in
                if complete {
                    navigationController?.popToRootViewController(animated: true)

                    
                    
                }
            }
        }
    
        
    }
    
    func save(complation: (_ finish: Bool) -> ()) {
        guard let managedContext = appDelegate?.persistentContainer.viewContext else { return }
        let goal = Goal(context: managedContext)
        
        goal.goalDescription = desription
        goal.goalType = goalType.rawValue
        goal.goalComplationValue = Int32(goalText.text!)!
        goal.goalProgress = Int32(0)
        do {
            
            try managedContext.save()
            complation(true)
            
        } catch {
            complation(false)
        }
        
        
    }
    
    

}
