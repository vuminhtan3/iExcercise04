//
//  B7.TongChuSo.swift
//  iExcercise04
//
//  Created by Minh Tan Vu on 23/04/2023.
//

import Foundation
/*
 Tính tổng các chữ số trong một số
 */

func sumOfDigits(number: Int) {
    
    var n = number
    var sum = 0
    
    while n > 0 {
        sum += n % 10
        n /= 10
    }
    print("Tổng các chữ số của \(number) là: \(sum)")
}
