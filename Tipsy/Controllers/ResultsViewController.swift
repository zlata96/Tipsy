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
    
    var result = "0.0"
    var tips = 10
    var split = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settingsLabel.text = "Split between \(split) people, with \(tips)% tip"
        totalLabel.text = result
    }
    
    @IBAction func reculculatePressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
