//
//  ViewController.swift
//  customLayout
//
//  Created by Tarciso Martins Júnior on 21/01/19.
//  Copyright © 2019 Tarciso Martins Júnior. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField1Constraint: NSLayoutConstraint!
    @IBOutlet weak var textField1TopConstraint: NSLayoutConstraint!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField2Constraint: NSLayoutConstraint!
    @IBOutlet weak var textField2TopConstraint: NSLayoutConstraint!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label1Constraint: NSLayoutConstraint!
    @IBOutlet weak var label1TopConstraint: NSLayoutConstraint!
    @IBOutlet weak var label2: UILabel!
    
    
    // Constraint static values
    let TOP_CONSTRAINT: CGFloat = 16
    let TEXTFIELD_HEIGHT: CGFloat = 30
    let LABEL_HEIGHT: CGFloat = 21
    
    
    @IBAction func segmentedControlValueChanged(_ sender: UISegmentedControl) {
        
        labelTitle.text = String(format: "Selected : %d", sender.selectedSegmentIndex)
        
        DispatchQueue.main.async{
            switch sender.selectedSegmentIndex {
            case 0:
                //self.textField1.isHidden = true
                self.textField1TopConstraint.constant = 0
                self.textField1Constraint.constant = 0
                self.textField2TopConstraint.constant = self.TOP_CONSTRAINT
                self.textField2Constraint.constant = self.TEXTFIELD_HEIGHT
                self.label1TopConstraint.constant = self.TOP_CONSTRAINT
                self.label1Constraint.constant = self.LABEL_HEIGHT
            case 1:
                self.textField1TopConstraint.constant = self.TOP_CONSTRAINT
                self.textField1Constraint.constant = self.TEXTFIELD_HEIGHT
                self.textField2TopConstraint.constant = 0
                self.textField2Constraint.constant = 0
                self.label1TopConstraint.constant = self.TOP_CONSTRAINT
                self.label1Constraint.constant = self.LABEL_HEIGHT
            case 2:
                self.textField1TopConstraint.constant = self.TOP_CONSTRAINT
                self.textField1Constraint.constant = self.TEXTFIELD_HEIGHT
                self.textField2TopConstraint.constant = self.TOP_CONSTRAINT
                self.textField2Constraint.constant = self.TEXTFIELD_HEIGHT
                self.label1TopConstraint.constant = 0
                self.label1Constraint.constant = 0
            default:
                self.textField1TopConstraint.constant = self.TOP_CONSTRAINT
                self.textField1Constraint.constant = self.TEXTFIELD_HEIGHT
                self.textField2TopConstraint.constant = self.TOP_CONSTRAINT
                self.textField2Constraint.constant = self.TEXTFIELD_HEIGHT
                self.label1TopConstraint.constant = self.TOP_CONSTRAINT
                self.label1Constraint.constant = self.LABEL_HEIGHT
            }
            self.view.layoutIfNeeded()
        }
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        labelTitle.text = "Take your choice"
    }


}

