//
//  TipsyBrain.swift
//  Tipsy
//
//  Created by Злата Гусева on 05.09.2022.
//

import Foundation

struct BillBrain {
    var tip = 0.0
    var numberOfSPlit = 2
    var totalBill = 0.0
    
    func calculateResult() -> String {
        let result = (totalBill * (1 + tip / 100)) / Double(numberOfSPlit)
        return String(format: "%.2f", result)
    }
}
