//
//  ViewController.swift
//  ForRealTipCalc
//
//  Created by JAVIER VILLA on 1/24/19.
//  Copyright © 2019 JAVIER VILLA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }

    @IBAction func calculateTip(_ sender: Any) {
        // Get the bill amont
        let bill = Double(billField.text!) ?? 0
        
        // Calc tip and total
        let tipPercentages = [0.1, 0.15, 0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update the tip and total
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
}

