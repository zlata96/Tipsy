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
    
    var billBrain = BillBrain()

    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.endEditing(true)
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        
        let buttonTitle = sender.currentTitle ?? "Error"
        let buttonTitleMinusPercentSign = String(buttonTitle.dropLast())
        billBrain.tip = Double(buttonTitleMinusPercentSign)!
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        billBrain.numberOfSPlit = Int(sender.value)
        splitNumberLabel.text = String(format: "%.0f", sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let billText = billTextField.text!
        if !billText.isEmpty {
            billBrain.totalBill = Double(billText)!
            performSegue(withIdentifier: "goToResults", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.billBrain = billBrain
        }
     }
}
