//
//  ViewController.swift
//  CurrecyConverter
//
//  Created by George Higbie on 1/8/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var converted: UILabel!
    
    @IBOutlet weak var conversionRate: UITextField!
    
    @IBOutlet weak var conversionAmount: UITextField!
    
    @IBOutlet weak var currency: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        converted.text = ""
        // Do any additional setup after loading the view.
    }


    @IBAction func convert(_ sender: Any) {
        let rate = Double(conversionRate.text!)!
        let amount = Double(conversionAmount.text!)!
        let conversion = rate * amount
        converted.text = "\(currency.selectedSegmentIndex == 0 ? "$": "￥")\(conversion)"
    }
    
}

