//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Злата Гусева on 04.09.2022.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var settingsLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    var billBrain: BillBrain?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let billBrain = billBrain {
            settingsLabel.text = "Split between \(billBrain.numberOfSPlit) people, with \(Int(billBrain.tip))% tip"
            totalLabel.text = billBrain.calculateResult()
        }
    }
    
    @IBAction func reculculatePressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
