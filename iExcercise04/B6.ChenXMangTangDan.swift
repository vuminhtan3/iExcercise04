//
//  B6.ChenXMangTangDan.swift
//  iExcercise04
//
//  Created by Minh Tan Vu on 23/04/2023.
//

import Foundation

/*
 Chèn phần tử có giá trị X vào mảng sao cho mảng vẫn có thứ tự tăng dần.
 */

func insertArrayIncreasing(x: Int, numbers: inout [Int]) {
    
    print("Mảng ban đầu: \(numbers)")
    
    var xIndex = 0
    
    arraySort(numbers: &numbers)
    
    for i in 0..<numbers.count {
        if x >= numbers[i] && x <= numbers[i+1] {
            xIndex = i+1
        }
    }
    
    numbers.insert(x, at: xIndex)
    
    print("Mảng sau khi chèn \(x) và được sắp xếp tăng dần: \(numbers)")
    
    func arraySort(numbers: inout [Int]) -> [Int]{
        for i in 0..<numbers.count {
            for j in 1..<numbers.count-i {
                if numbers[j-1] > numbers[j] {
                    let temp = numbers[j-1]
                    numbers[j-1] = numbers [j]
                    numbers[j] = temp
                }
            }
        }
        return numbers
    }
    
}
