//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Moises Sanchez on 21/03/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue: String? 
    var advice: String?
    var color: UIColor? 
    @IBOutlet weak var backgroundColor: UIImageView!
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        backgroundColor.backgroundColor = color
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
        
    }
    

}
