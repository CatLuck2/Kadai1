//
//  CalculateModel.swift
//  Kadai1
//
//  Created by Nekokichi on 2022/02/09.
//

import UIKit

protocol CalculateModelProtocol {
    func calculate(values: [Int]) -> Int
}

struct CalculateModel: CalculateModelProtocol {
    func calculate(values: [Int]) -> Int {
        var result: Int = 0
        for value in values {
            result += value
        }
        return result
    }
}
