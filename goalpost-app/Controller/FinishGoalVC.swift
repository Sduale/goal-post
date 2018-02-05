//
//  FinishGoalVC.swift
//  goalpost-app
//
//  Created by nopcallowed on 2/5/18.
//  Copyright © 2018 GASHAN INC. All rights reserved.
//

import UIKit

class FinishGoalVC: UIViewController {

    @IBOutlet weak var createGoalBtn: UIButton!
    @IBOutlet weak var pointTxtField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createGoalBtn.bindToKeyboard()

        
    }

    @IBAction func createGoalBtnWasPrssd(_ sender: Any) {
        // Pass data into the CORE DATA GOAL MODEL
    }
    
}
