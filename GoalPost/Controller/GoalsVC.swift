//
//  ViewController.swift
//  GoalPost
//
//  Created by javad faghih on 5/4/1399 AP.
//

import UIKit

class GoalsVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        

    }

    @IBAction func goalBtnTapped(_ sender: UIBarButtonItem) {
        
        
    }
    
}

