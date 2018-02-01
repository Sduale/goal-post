//
//  CreateGoalVC.swift
//  goalpost-app
//
//  Created by nopcallowed on 1/31/18.
//  Copyright © 2018 GASHAN INC. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController {
    
    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTeamBtn: UIButton!
    @IBOutlet weak var longTermBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }

   
    
    @IBAction func shortTermBtnWasPrssd(_ sender: Any) {
    }
    
    @IBAction func longTermBtnWasPrssed(_ sender: Any) {
    }
    
    @IBAction func nextBtnWasPrssed(_ sender: Any) {
    }
    
    @IBAction func backBtnWasPrssed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
