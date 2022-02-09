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
        var result: Int = 0
        guard let inputText1 = inputNumTextField1.text,
            let inputText2 = inputNumTextField2.text,
            let inputText3 = inputNumTextField3.text,
            let inputText4 = inputNumTextField4.text,
            let inputText5 = inputNumTextField5.text
        else {
            return
        }
        result += Int(inputText1) ?? 0
        result += Int(inputText2) ?? 0
        result += Int(inputText3) ?? 0
        result += Int(inputText4) ?? 0
        result += Int(inputText5) ?? 0
        setResultOfAdditionLabel(result: result)
    }
    
    private func setResultOfAdditionLabel(result: Int) {
        resultOfAdditionLabel.text = "\(result)"
    }
    
}

