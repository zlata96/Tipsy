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
    var tip = 0.1
    var numberOfSPlit = 2
    var totalBill = 0.0
    var totalResult = "0.0"

    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.endEditing(true)
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        
        let buttonTitle = sender.currentTitle ?? "Error"
        
        let buttonTitleMinusPercentSign =  String(buttonTitle.dropLast())
        
        let buttonTitleAsANumber = Double(buttonTitleMinusPercentSign)!
        
        tip = buttonTitleAsANumber / 100
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        numberOfSPlit = Int(sender.value)
        splitNumberLabel.text = String(format: "%.0f", sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let bill = billTextField.text!
        
        if bill != "" {
            totalBill = Double(bill)!
            print(totalBill)
            let result = (totalBill * (1 + tip ))/Double(numberOfSPlit)
            totalResult = String(format: "%.2f", result)
            performSegue(withIdentifier: "goToResults", sender: self)
        }
 
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultsViewController
            
            destinationVC.result = totalResult
            destinationVC.tips = Int(tip * 100)
            destinationVC.split = numberOfSPlit
        }
     }
    
}

