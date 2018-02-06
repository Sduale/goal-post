//
//  CreateGoalVC.swift
//  goalpost-app
//
//  Created by nopcallowed on 1/31/18.
//  Copyright © 2018 GASHAN INC. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController,UITextViewDelegate {
    
    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTeamBtn: UIButton!
    @IBOutlet weak var longTermBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    var goalType: GoalType = .shortTerm
    

    override func viewDidLoad() {
        super.viewDidLoad()
        nextBtn.bindToKeyboard()
        shortTeamBtn.setSelectedColor()
        longTermBtn.setDeselectedColor()
        goalTextView.delegate = self

    }

   
    
    @IBAction func shortTermBtnWasPrssd(_ sender: Any) {
        goalType = .shortTerm
        shortTeamBtn.setSelectedColor()
        longTermBtn.setDeselectedColor()
    }
    
    @IBAction func longTermBtnWasPrssed(_ sender: Any) {
        goalType = .longTerm
        longTermBtn.setSelectedColor()
        shortTeamBtn.setDeselectedColor()
    }
    
    @IBAction func nextBtnWasPrssed(_ sender: Any) {
        if goalTextView.text != "" && goalTextView.text != "What is your goal?" {
            guard let finishGoalVC = storyboard?.instantiateViewController(withIdentifier: "finishGoalVC") as? FinishGoalVC else {return}
            finishGoalVC.initData(description: goalTextView.text!, type: goalType)
            presentingViewController?.presentSecondaryDetail(finishGoalVC)
        }
    }
    
    @IBAction func backBtnWasPrssed(_ sender: Any) {
        dismissDetail()
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        goalTextView.text = ""
        goalTextView.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
}









