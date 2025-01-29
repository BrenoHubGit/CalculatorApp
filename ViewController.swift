//
//  ViewController.swift
//  Test
//
//  Created by Breno Garcia on 21/01/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstNumberInput: UITextField!
    @IBOutlet weak var secondNumberInput: UITextField!
    @IBOutlet weak var resultOutput: UILabel!
    
    private func setupkeyboard(){
        firstNumberInput.keyboardType = .decimalPad
        secondNumberInput.keyboardType = .decimalPad
    }
    
    private func convertToDouble(input text: String) -> Double? {
        Double(text.replacingOccurrences(of: "," , with: "."))
    }
    
    private func renderError(){
        resultOutput.text = "Ocorreu um erro verifique os campos!"
    }
    
    private func renderResult(type: String, result: Double){
        resultOutput.text = "O resultado da \(type) é \(String(format: "%.2f", result))"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupkeyboard()
    }
    
    @IBAction func sum(_ sender: Any) {
        guard let firstNumber = convertToDouble(input: firstNumberInput.text ?? ""),
              let secondNumber = convertToDouble(input: secondNumberInput.text ?? "") else {
            renderError()
            return
        }

        renderResult(type: "Soma", result: firstNumber + secondNumber)
    }
    
    @IBAction func sub(_ sender: Any) {
        guard let firstNumber = convertToDouble(input: firstNumberInput.text ?? ""),
              let secondNumber = convertToDouble(input: secondNumberInput.text ?? "") else {
            renderError()
            return
        }
        renderResult(type: "Subtração", result: firstNumber - secondNumber)
    }
    
    @IBAction func div(_ sender: Any) {
        guard let firstNumber = convertToDouble(input: firstNumberInput.text ?? ""),
              let secondNumber = convertToDouble(input: secondNumberInput.text ?? "") else {
            renderError()
            return
        }
        renderResult(type: "Divisão", result: firstNumber / secondNumber)
    }
    
    @IBAction func mult(_ sender: Any) {
        guard let firstNumber = convertToDouble(input: firstNumberInput.text ?? ""),
              let secondNumber = convertToDouble(input: secondNumberInput.text ?? "") else {
            renderError()
            return
        }
        renderResult(type: "Multiplicação", result: firstNumber * secondNumber)
    }
    
}

