//
//  ViewController.swift
//  Kadai1
//
//  Created by Nekokichi on 2022/02/06.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet weak private var inputNumTextField1: UITextField!
    @IBOutlet weak private var inputNumTextField2: UITextField!
    @IBOutlet weak private var inputNumTextField3: UITextField!
    @IBOutlet weak private var inputNumTextField4: UITextField!
    @IBOutlet weak private var inputNumTextField5: UITextField!
    @IBOutlet weak private var resultOfAdditionLabel: UILabel!
    
    @IBAction func calculateAdditionButton(_ sender: UIButton) {
        let calculateAdditionModel: CalculateModelProtocol = CalculateModel()
        
        let result = calculateAdditionModel.calculate(values: [
            Int(inputNumTextField1.text ?? "") ?? 0,
            Int(inputNumTextField2.text ?? "") ?? 0,
            Int(inputNumTextField3.text ?? "") ?? 0,
            Int(inputNumTextField4.text ?? "") ?? 0,
            Int(inputNumTextField5.text ?? "") ?? 0,
        ])
        
        setResultOfAdditionLabel(result: result)
    }
    
    private func setResultOfAdditionLabel(result: Int) {
        resultOfAdditionLabel.text = "\(result)"
    }
}
