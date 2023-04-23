//
//  B1DemSoNguyenTo.swift
//  iExcercise04
//
//  Created by Minh Tan Vu on 22/04/2023.
//

import Foundation

func countPrimeNumber(a: Int, b: Int) {
    var count = 0
    
    for number in a...b {
        if isPrime(number) {
            count += 1
        }
    }
    
    func isPrime(_ n: Int) -> Bool {
        var i = 2
        if n < 2 {
            return false
        }
        while i*i <= n {
            if n % i == 0 {
                return false
            }
            i += 1
        }
        return true
    }
    print("Số số nguyên tố trong đoạn [\(a), \(b)] là: \(count)")
}
