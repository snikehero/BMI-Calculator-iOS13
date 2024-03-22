//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    @IBOutlet weak var heightSliderChange: UISlider!
    @IBOutlet weak var weightSliderChange: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
        
        
        @IBAction func calculatePressed(_ sender: UIButton) {
            let height = heightSliderChange.value
            let weight = weightSliderChange.value
            calculatorBrain.calculateBMI(height: height, weight: weight)
            self.performSegue(withIdentifier: "goToResult", sender: self)
            
            
        }
    
        @IBAction func heightSliderChanged(_ sender: UISlider) {
            heightLabel.text = "\(String(format: "%.2f", sender.value))m"
        }
        @IBAction func weightSliderChanged(_ sender: UISlider) {
            weightLabel.text = "\(String(format: "%.0f", sender.value))Kg"
        }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
        }
    }
}


