//
//  Bai0.swift
//  iExcercise04
//
//  Created by Minh Tan Vu on 21/04/2023.
//

import Foundation

/*
 Cho một mảng số nguyên bất kỳ. Duyệt mảng và loại bỏ toàn bộ các phần tử là số chẵnfo và trả về mảng mới
 
 - Viết riêng hàm kiểm tra chẵn, lẻ
 */

func Bai0(numbers: [Int]) -> [Int] {
    
    var newArray: [Int] = []
    for number in numbers {
        if isEven(number) {
            newArray.append(number)
        }
    }
    return newArray
    
    
    func isEven(_ number: Int) -> Bool {
        if number % 2 == 0 {
            return true
        } else {
            return false
        }
    }
    
}

