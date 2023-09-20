//
//  CalculatorModel.swift
//  iosCalculator
//
//  Created by Dias Zait on 20.09.2023.
//

import UIKit

enum Operation {
    case add, subtract, multiply, divide
}

struct CalculatorModel {
    var operand1: Float
    var operand2: Float
    var currentOperation: Operation
    
    func performOperation() -> Float {
        switch currentOperation {
        case .add:
            return operand1 + operand2
        case .subtract:
            return operand1 - operand2
        case .multiply:
            return operand1 * operand2
        case .divide:
            return operand1 / operand2
        }
    }
}
