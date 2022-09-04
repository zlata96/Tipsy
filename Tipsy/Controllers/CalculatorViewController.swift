//
//  CalculatorViewController.swift
//  Tipsy
//
//  Created by Zlata Guseva on 04/09/2022.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var splitNumberLabel: UILabel!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    var tipPercentage = ""

    @IBAction func tipChanged(_ sender: UIButton) {
        self.tipPercentage = sender.currentTitle ?? "Error"
        if self.tipPercentage == zeroPctButton.currentTitle {
        zeroPctButton.isSelected = true
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = false
        } else if self.tipPercentage == tenPctButton.currentTitle {
            zeroPctButton.isSelected = false
                tenPctButton.isSelected = true
                twentyPctButton.isSelected = false
        } else {
            zeroPctButton.isSelected = false
                tenPctButton.isSelected = false
                twentyPctButton.isSelected = true
        }
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        if self.tipPercentage == zeroPctButton.currentTitle {
            print(0.0)
        } else if self.tipPercentage == tenPctButton.currentTitle {
            print(0.1)
        } else {
            print(0.2)
        }
    }
    
}

