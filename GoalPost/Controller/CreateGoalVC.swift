//
//  DetailsVC.swift
//  GoalPost
//
//  Created by javad faghih on 5/5/1399 AP.
//

import UIKit
import CoreData


class CreateGoalVC: UIViewController, UITextViewDelegate {

    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var shortTermBtn: UIButton!
    @IBOutlet weak var longTermBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    var goalType: GoalType = .shortTerm

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textView.inputAccessoryView = nextBtn
        shortTermBtn.setSelectedColor()
        longTermBtn.setDeselectedColor()
        textView.delegate = self
        navigationItem.title = "GoalPost"
        
    }
    
    @IBAction func shortBtnWasTapped(_ sender: UIButton) {
        goalType = .shortTerm
        shortTermBtn.setSelectedColor()
        longTermBtn.setDeselectedColor()
        
    }
    
    @IBAction func longBtnWasTapped(_ sender: UIButton) {
        goalType = .longTerm
        shortTermBtn.setDeselectedColor()
        longTermBtn.setSelectedColor()
        
    }
    
    @IBAction func nextBtnWasTapped(_ sender: UIButton) {
        guard  let goalPointVC = storyboard?.instantiateViewController(identifier: "goalPointsVC") as? FinishGoalVC else { return }
        
        goalPointVC.initData(desription: textView.text!, type: goalType)
        
        navigationController?.pushViewController(goalPointVC, animated: true)
        
    }
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.text = ""
        textView.textColor = .black
    }
    
    
}
