//
//  CalculateModel.swift
//  Kadai1
//
//  Created by Nekokichi on 2022/02/09.
//

import UIKit

/*
 変更後
 ・プロトコルの変数result、関数getResultが無くなった
 ・構造体Addtionが無くなった
 ・関数calculateに計算と取得を実装
 →より抽象的なプロトコル
 →calculateメソッドを使用するだけでいい
 
 なぜプロトコルを使ったのか？
 ・足し算以外の計算を実装するのを柔軟にするため
 ・実装すべき処理を強制できるので、実装忘れを防げる
 */

protocol CalculateModelProtocol {
    func calculate(values: [Int]) -> Int
}

/*
 CalculateModelProtoclに準拠する型なら、
 共通の処理を統一できる
 */

struct CalculateModel: CalculateModelProtocol {
     func calculate(values: [Int]) -> Int {
         var result: Int = 0
          for value in values {
              result += value
          }
          return result
     }
}
