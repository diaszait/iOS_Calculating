//
//  CalculatorView.swift
//  iosCalculator
//
//  Created by Dias Zait on 20.09.2023.
//

import Foundation
import UIKit

class CalculatorView : UIView {
    
    var operationPressed: ((Float,Int) -> ())?
    
    let button0 : UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 100)
        button.layer.cornerRadius = 40
        button.setTitle("0", for: .normal)
        button.contentHorizontalAlignment = .left
        button.contentEdgeInsets = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 0)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        button.tag = 1
        button.addTarget(self, action: #selector(addTargets(_:)), for: .touchUpInside)
        return button
    }()
    
    let button1 : UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 100)
        button.layer.cornerRadius = 40
        button.setTitle("1", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        button.tag = 2
        button.addTarget(self, action: #selector(addTargets(_:)), for: .touchUpInside)
        return button
    }()
    
    let button2 : UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 100)
        button.layer.cornerRadius = 40
        button.setTitle("2", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        button.tag = 3
        button.addTarget(self, action: #selector(addTargets(_:)), for: .touchUpInside)
        return button
    }()
    
    let button3 : UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 100)
        button.layer.cornerRadius = 40
        button.setTitle("3", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        button.tag = 4
        button.addTarget(self, action: #selector(addTargets(_:)), for: .touchUpInside)
        return button
    }()
    
    let button4 : UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 100)
        button.layer.cornerRadius = 40
        button.setTitle("4", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        button.tag = 5
        button.addTarget(self, action: #selector(addTargets(_:)), for: .touchUpInside)
        return button
    }()
    
    let button5 : UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 100)
        button.layer.cornerRadius = 40
        button.setTitle("5", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        button.tag = 6
        button.addTarget(self, action: #selector(addTargets(_:)), for: .touchUpInside)
        return button
    }()
    
    let button6 : UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 100)
        button.layer.cornerRadius = 40
        button.setTitle("6", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        button.tag = 7
        button.addTarget(self, action: #selector(addTargets(_:)), for: .touchUpInside)
        return button
    }()
    
    let button7 : UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 100)
        button.layer.cornerRadius = 40
        button.setTitle("7", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        button.tag = 8
        button.addTarget(self, action: #selector(addTargets(_:)), for: .touchUpInside)
        return button
    }()
    
    let button8 : UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 100)
        button.layer.cornerRadius = 40
        button.setTitle("8", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        button.tag = 9
        button.addTarget(self, action: #selector(addTargets(_:)), for: .touchUpInside)
        return button
    }()
    
    let button9 : UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 100)
        button.layer.cornerRadius = 40
        button.setTitle("9", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        button.tag = 10
        button.addTarget(self, action: #selector(addTargets(_:)), for: .touchUpInside)
        return button
    }()
    
    let buttonDot : UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 100)
        button.layer.cornerRadius = 40
        button.setTitle(",", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        button.tag = 11
        button.addTarget(CalculatorView.self, action: #selector(addTargets(_:)), for: .touchUpInside)
        return button
    }()
    
    let buttonEqual : UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 255/255, green: 160/255, blue: 10/255, alpha: 100)
        button.layer.cornerRadius = 40
        button.contentVerticalAlignment = .center
        button.setTitle("=", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 40)
        button.tag = 12
        button.addTarget(self, action: #selector(addTargets(_:)), for: .touchUpInside)
        return button
    }()
    
    let buttonPlus  : UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 255/255, green: 160/255, blue: 10/255, alpha: 100)
        button.layer.cornerRadius = 40
        button.setTitle("+", for: .normal)
        button.contentEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 7, right: 0)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 50)
        button.tag = 13
        button.addTarget(self, action: #selector(addTargets(_:)), for: .touchUpInside)
        return button
    }()
    
    let buttonMinus : UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 255/255, green: 160/255, blue: 10/255, alpha: 100)
        button.layer.cornerRadius = 40
        button.setTitle("-", for: .normal)
        button.contentEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 8, right: 0)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 50)
        button.tag = 14
        button.addTarget(self, action: #selector(addTargets(_:)), for: .touchUpInside)
        return button
    }()
    
    let buttonMultiply : UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 255/255, green: 160/255, blue: 10/255, alpha: 100)
        button.layer.cornerRadius = 40
        button.setTitle("*", for: .normal)
        button.contentEdgeInsets = UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 50)
        button.tag = 15
        button.addTarget(self, action: #selector(addTargets(_:)), for: .touchUpInside)
        return button
    }()
    
    let buttonDivise : UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 255/255, green: 160/255, blue: 10/255, alpha: 100)
        button.layer.cornerRadius = 40
        button.setTitle("/", for: .normal)
        button.contentEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 7, right: 0)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        button.tag = 16
        button.addTarget(self, action: #selector(addTargets(_:)), for: .touchUpInside)
        return button
    }()
    
    let buttonPercent : UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 100)
        button.layer.cornerRadius = 40
        button.setTitle("%", for: .normal)
        button.setTitleColor(.black, for: .normal)
//        button.contentEdgeInsets = UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        button.tag = 17
        button.addTarget(self, action: #selector(addTargets(_:)), for: .touchUpInside)
        return button
    }()
    
    let buttonSign : UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 100)
        button.layer.cornerRadius = 40
        button.setTitle("+/-", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.contentEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 7, right: 0)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        button.tag = 18
        button.addTarget(self, action: #selector(addTargets(_:)), for: .touchUpInside)
        return button
    }()
    
    let buttonClear
    : UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 100)
        button.layer.cornerRadius = 40
        button.setTitle("AC", for: .normal)
        button.setTitleColor(.black, for: .normal)
//        button.contentEdgeInsets = UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        
        return button
    }()
    
    var result : UILabel = {
        let cLabel = UILabel()
        cLabel.text = "0"
        cLabel.textColor = .white
        cLabel.textAlignment = .right
        cLabel.font = .systemFont(ofSize: 80)
        
        return cLabel
    }()
    
    let stackView1 : UIStackView = {
        let sView = UIStackView()
        sView.axis = .horizontal
        sView.distribution = .fillEqually
        sView.spacing = 17
        
        
        return sView
    }()
    
    let stackView2 : UIStackView = {
        let sView = UIStackView()
        sView.axis = .horizontal
        sView.distribution = .fillEqually
        sView.spacing = 17
        
        
        return sView
    }()
    
    let stackView3 : UIStackView = {
        let sView = UIStackView()
        sView.axis = .horizontal
        sView.distribution = .fillEqually
        sView.spacing = 17
        
        
        return sView
    }()
    
    let stackView4 : UIStackView = {
        let sView = UIStackView()
        sView.axis = .horizontal
        sView.distribution = .fillEqually
        sView.spacing = 17
        
        
        return sView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        buttonClear.addTarget(self, action: #selector(buttonClearPressed), for: .touchUpInside)
        layoutSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        backgroundColor = .black
        
        addToView()
        addConstraints()
    }
    
    @objc func addTargets(_ sender: UIButton){
        sender.animateButton()
        let tag = sender.tag - 1
        switch tag{
        case 0,1,2,3,4,5,6,7,8,9:
            if result.text == "0" {
                result.text = "\(tag)"
            } else if let text = result.text {
                result.text = "\(String(describing: text))\(tag)"
            }
        case 10:
            if result.text == "0"{
                result.text = "0."
            } else if let text = result.text, !text.contains(".") {
                result.text = "\(String(describing: text))."
            }
        case 11:
            if let text = result.text, let value = Float(text) {
                operationPressed?(value,tag)
            }
            
        case 12,13,14,15:
            if let text = result.text, let value = Float(text){
                operationPressed?(value,tag)
                result.text = "0"
            }
        case 16:
            if let text = result.text, let value = Float(text) {
                operationPressed?(value,tag)
            }
        case 17:
            if let text = result.text, let value = Float(text) {
                let negativeValue = -value
                let intNegative = Int(negativeValue)
                if negativeValue - Float(intNegative) == 0 {
                    result.text = "\(intNegative)"
                } else {
                    result.text = String(negativeValue)
                }
            }
        default:
            break
        }
    }
    
    @objc func buttonClearPressed(){
        result.text = "0"
    }
    
    func addToView(){
        addSubview(button0)
        addSubview(button1)
        addSubview(button2)
        addSubview(button3)
        addSubview(button4)
        addSubview(button5)
        addSubview(button6)
        addSubview(button7)
        addSubview(button8)
        addSubview(button9)
        addSubview(buttonDot)
        addSubview(buttonEqual)
        addSubview(buttonPlus)
        addSubview(buttonMinus)
        addSubview(buttonMultiply)
        addSubview(buttonDivise)
        addSubview(buttonPercent)
        addSubview(buttonSign)
        addSubview(buttonClear)
        addSubview(result)
        
        addSubview(stackView1)
        addSubview(stackView2)
        addSubview(stackView3)
        addSubview(stackView4)
        
        stackView1.addArrangedSubview(button1)
        stackView1.addArrangedSubview(button2)
        stackView1.addArrangedSubview(button3)
        stackView1.addArrangedSubview(buttonPlus)
        
        stackView2.addArrangedSubview(button4)
        stackView2.addArrangedSubview(button5)
        stackView2.addArrangedSubview(button6)
        stackView2.addArrangedSubview(buttonMinus)
        
        stackView3.addArrangedSubview(button7)
        stackView3.addArrangedSubview(button8)
        stackView3.addArrangedSubview(button9)
        stackView3.addArrangedSubview(buttonMultiply)
        
        stackView4.addArrangedSubview(buttonClear)
        stackView4.addArrangedSubview(buttonSign)
        stackView4.addArrangedSubview(buttonPercent)
        stackView4.addArrangedSubview(buttonDivise)
    }
    
    func addConstraints(){
        button0.translatesAutoresizingMaskIntoConstraints = false
        button1.translatesAutoresizingMaskIntoConstraints = false
        button2.translatesAutoresizingMaskIntoConstraints = false
        button3.translatesAutoresizingMaskIntoConstraints = false
        button4.translatesAutoresizingMaskIntoConstraints = false
        button5.translatesAutoresizingMaskIntoConstraints = false
        button6.translatesAutoresizingMaskIntoConstraints = false
        button7.translatesAutoresizingMaskIntoConstraints = false
        button8.translatesAutoresizingMaskIntoConstraints = false
        button9.translatesAutoresizingMaskIntoConstraints = false
        buttonDot.translatesAutoresizingMaskIntoConstraints = false
        buttonEqual.translatesAutoresizingMaskIntoConstraints = false
        buttonPlus.translatesAutoresizingMaskIntoConstraints = false
        buttonMinus.translatesAutoresizingMaskIntoConstraints = false
        buttonMultiply.translatesAutoresizingMaskIntoConstraints = false
        buttonDivise.translatesAutoresizingMaskIntoConstraints = false
        buttonPercent.translatesAutoresizingMaskIntoConstraints = false
        buttonSign.translatesAutoresizingMaskIntoConstraints = false
        buttonClear.translatesAutoresizingMaskIntoConstraints = false
        result.translatesAutoresizingMaskIntoConstraints = false
        stackView1.translatesAutoresizingMaskIntoConstraints = false
        stackView2.translatesAutoresizingMaskIntoConstraints = false
        stackView3.translatesAutoresizingMaskIntoConstraints = false
        stackView4.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            result.bottomAnchor.constraint(equalTo: stackView4.topAnchor, constant: -17),
            result.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            result.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            result.heightAnchor.constraint(equalToConstant: 80),
            
            button0.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -40),
            button0.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 17),
            button0.trailingAnchor.constraint(equalTo: centerXAnchor, constant: -2),
            button0.heightAnchor.constraint(equalToConstant: 80),
            
            buttonDot.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -40),
            buttonDot.leadingAnchor.constraint(equalTo: button0.trailingAnchor, constant: 16),
            buttonDot.widthAnchor.constraint(equalToConstant: 80),
            buttonDot.heightAnchor.constraint(equalToConstant: 80),
            
            buttonEqual.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -40),
            buttonEqual.leadingAnchor.constraint(equalTo: buttonDot.trailingAnchor, constant: 17),
            buttonEqual.widthAnchor.constraint(equalToConstant: 80),
            buttonEqual.heightAnchor.constraint(equalToConstant: 80),
            
            stackView1.bottomAnchor.constraint(equalTo: buttonEqual.topAnchor, constant: -17),
            stackView1.leadingAnchor.constraint(equalTo: button0.leadingAnchor),
            stackView1.trailingAnchor.constraint(equalTo: buttonEqual.trailingAnchor),
            stackView1.heightAnchor.constraint(equalToConstant: 80),
            
            stackView2.bottomAnchor.constraint(equalTo: stackView1.topAnchor, constant: -17),
            stackView2.leadingAnchor.constraint(equalTo: button0.leadingAnchor),
            stackView2.trailingAnchor.constraint(equalTo: buttonEqual.trailingAnchor),
            stackView2.heightAnchor.constraint(equalToConstant: 80),
            
            stackView3.bottomAnchor.constraint(equalTo: stackView2.topAnchor, constant: -17),
            stackView3.leadingAnchor.constraint(equalTo: button0.leadingAnchor),
            stackView3.trailingAnchor.constraint(equalTo: buttonEqual.trailingAnchor),
            stackView3.heightAnchor.constraint(equalToConstant: 80),
            
            stackView4.bottomAnchor.constraint(equalTo: stackView3.topAnchor, constant: -17),
            stackView4.leadingAnchor.constraint(equalTo: button0.leadingAnchor),
            stackView4.trailingAnchor.constraint(equalTo: buttonEqual.trailingAnchor),
            stackView4.heightAnchor.constraint(equalToConstant: 80),
        ])
        
    }
}


extension UIButton {
    func animateButton() {
        self.transform = CGAffineTransform(scaleX: 0.975, y: 0.96)
        UIView.animate(withDuration: 0.2, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 6, options: .allowUserInteraction, animations: {
            self.transform = CGAffineTransform.identity
        }, completion: nil)
    }
}

