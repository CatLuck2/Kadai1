//
//  CalculateModel.swift
//  Kadai1
//
//  Created by Nekokichi on 2022/02/09.
//

import UIKit

final class CalculateModel {
//    private var result: Int = 0
//    func calculateAddition(inputValue: Int) {
//        result += inputValue
//    }
//    func resultOfAddition() -> Int {
//        result
//    }
    struct Addition {
        private var result: Int = 0
        mutating func calculateAddition(inputValue: Int) {
            result += inputValue
        }
        func resultOfAddition() -> Int {
            result
        }
    }
}
