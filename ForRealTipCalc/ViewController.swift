//
//  ViewController.swift
//  ForRealTipCalc
//
//  Created by JAVIER VILLA on 1/24/19.
//  Copyright © 2019 JAVIER VILLA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var billBox: UITextField!
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var tipPercent: UISegmentedControl!
    @IBOutlet weak var subTotal: UILabel!
    @IBOutlet var tap: UITapGestureRecognizer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }

}

