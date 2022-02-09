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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func calculateAdditionButton(_ sender: UIButton) {
        var calculateAdditionModel = CalculateModel.Addition()
        
        calculateAdditionModel.calculate(inputValue: Int(inputNumTextField1.text ?? "") ?? 0)
        calculateAdditionModel.calculate(inputValue: Int(inputNumTextField2.text ?? "") ?? 0)
        calculateAdditionModel.calculate(inputValue: Int(inputNumTextField3.text ?? "") ?? 0)
        calculateAdditionModel.calculate(inputValue: Int(inputNumTextField4.text ?? "") ?? 0)
        calculateAdditionModel.calculate(inputValue: Int(inputNumTextField5.text ?? "") ?? 0)
        
        setResultOfAdditionLabel(result: calculateAdditionModel.getResult())
    }
    
    private func setResultOfAdditionLabel(result: Int) {
        resultOfAdditionLabel.text = "\(result)"
    }
    
}

