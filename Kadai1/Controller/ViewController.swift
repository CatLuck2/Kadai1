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

    /*
     不要なメソッドは要らない
     ・未使用なので、存在する必要がない
     ・消せば、コード量が減り、読みやすくなる
     */
//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }
    
    @IBAction func calculateAdditionButton(_ sender: UIButton) {
        /*
         ・プロトコルを型付け
         ・プロトコルに準拠した構造体に対応
         */
        let calculateAdditionModel: CalculateModelProtocol = CalculateModel()
        
        /*
         ・呼び出しの共通部分を省略
         ・後から追加する際、要素のみを加えればいい
         */
        let result = calculateAdditionModel.calculate(values: [
             Int(inputNumTextField1.text ?? "") ?? 0,
             Int(inputNumTextField2.text ?? "") ?? 0,
             Int(inputNumTextField3.text ?? "") ?? 0,
             Int(inputNumTextField4.text ?? "") ?? 0,
             Int(inputNumTextField5.text ?? "") ?? 0,
         ])

        setResultOfAdditionLabel(result: result)
        
//        var calculateAdditionModel = CalculateModel.Addition()
        
//        calculateAdditionModel.calculate(inputValue: Int(inputNumTextField1.text ?? "") ?? 0)
//        calculateAdditionModel.calculate(inputValue: Int(inputNumTextField2.text ?? "") ?? 0)
//        calculateAdditionModel.calculate(inputValue: Int(inputNumTextField3.text ?? "") ?? 0)
//        calculateAdditionModel.calculate(inputValue: Int(inputNumTextField4.text ?? "") ?? 0)
//        calculateAdditionModel.calculate(inputValue: Int(inputNumTextField5.text ?? "") ?? 0)
        
//        setResultOfAdditionLabel(result: calculateAdditionModel.getResult())
    }
    
    private func setResultOfAdditionLabel(result: Int) {
        resultOfAdditionLabel.text = "\(result)"
    }
    
}

