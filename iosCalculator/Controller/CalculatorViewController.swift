//
//  CalculatorViewController.swift
//  iosCalculator
//
//  Created by Dias Zait on 20.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let mainView = CalculatorView()
    var answer: Float = 0
    var calculator = CalculatorModel(operand1: 0, operand2: 0, currentOperation: .add)
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        calculate()
        addToView()
        constraints()
    }
    
    func calculate() {
        mainView.operationPressed = {(operand1, currentOperation) in
            switch currentOperation{
            case 11:
                self.calculator.operand1 = self.answer
                self.calculator.operand2 = Float(operand1)
                let answer = self.calculator.performOperation()
                if floor(answer) == answer {
                    self.mainView.result.text = String(format: "%.0f", answer)
                } else {
                    self.mainView.result.text = String(answer)
                }
                self.answer = 0
            case 12:
                if self.answer == 0 {
                    self.answer = Float(operand1)
                    self.calculator.currentOperation = .add
                } else {
                    self.calculator.operand1 = self.answer
                    self.calculator.operand2 = Float(operand1)
                    self.answer = self.calculator.performOperation()
                    self.calculator.currentOperation = .add
                }
            case 13:
                if self.answer == 0 {
                    self.answer = Float(operand1)
                    self.calculator.currentOperation = .subtract
                } else {
                    self.calculator.operand1 = self.answer
                    self.calculator.operand2 = Float(operand1)
                    self.answer = self.calculator.performOperation()
                    self.calculator.currentOperation = .subtract
                }
            case 14:
                if self.answer == 0 {
                    self.answer = Float(operand1)
                    self.calculator.currentOperation = .multiply
                } else {
                    self.calculator.operand1 = self.answer
                    self.calculator.operand2 = Float(operand1)
                    self.answer = self.calculator.performOperation()
                    self.calculator.currentOperation = .multiply
                }
            case 15:
                if self.answer == 0 {
                    self.answer = Float(operand1)
                    self.calculator.currentOperation = .divide
                } else {
                    self.calculator.operand1 = self.answer
                    self.calculator.operand2 = Float(operand1)
                    self.answer = self.calculator.performOperation()
                    self.calculator.currentOperation = .divide
                }
            case 16:
                if let text = self.mainView.result.text, let value = Float(text) {
                    self.answer = value / 100
                    let intAnswer = Int(self.answer)
                    if self.answer - Float(intAnswer) == 0 {
                        self.mainView.result.text = "\(intAnswer)"
                    } else {
                        let stringAnswer = String(self.answer)
                        self.mainView.result.text = stringAnswer
                    }
                }
            default:
                break
            }
        }
    }
    
    func addToView() {
        view.addSubview(mainView)
        
    }
    
    func constraints() {
        mainView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            mainView.topAnchor.constraint(equalTo: view.topAnchor),
            mainView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            mainView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mainView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
        ])
        
    }
}

