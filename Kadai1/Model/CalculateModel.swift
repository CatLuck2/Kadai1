//
//  CalculateModel.swift
//  Kadai1
//
//  Created by Nekokichi on 2022/02/09.
//

import UIKit

protocol CalculateProtocol {
    var result: Int { get }
    mutating func calculate(inputValue: Int)
    func getResult() -> Int
}

final class CalculateModel {
    struct Addition: CalculateProtocol {
        var result: Int = 0
        mutating func calculate(inputValue: Int) {
            result += inputValue
        }
        func getResult() -> Int {
            result
        }
    }
}
