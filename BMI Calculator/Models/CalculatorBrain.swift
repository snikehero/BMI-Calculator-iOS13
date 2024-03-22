//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Moises Sanchez on 21/03/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var bmi: Float = 0.0
    mutating func calculateBMI(height: Float, weight: Float) {
        bmi = weight / (height * height)
    }
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi)
        return bmiTo1DecimalPlace
    }
}
