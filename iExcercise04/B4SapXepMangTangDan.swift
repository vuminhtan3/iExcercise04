//
//  B4SapXepMangTangDan.swift
//  iExcercise04
//
//  Created by Minh Tan Vu on 23/04/2023.
//

import Foundation
/*
 Sắp xếp mảng theo thứ tự tăng dần (không dùng hàm sort)
 */

func bubbleSort(_ numbers: inout [Int]) {
    
    print("Mảng ban đầu: \(numbers)")
//    var sortedNumbers: [Int]
    
    for i in 0..<numbers.count {
        for j in 1..<numbers.count-i {
            if numbers[j - 1] > numbers[j] {
                let temp = numbers[j-1]
                numbers[j-1] = numbers[j]
                numbers[j] = temp
            }
        }
    }
    print("Mảng sau khi được sắp xếp tăng dần: \(numbers)")
}

func selectionSort(_ numbers: inout [Int]) {
    print("Mảng ban đầu: \(numbers)")
    
    for i in 0..<numbers.count {
        
        var minIndex = i
        
        for j in i+1..<numbers.count {
            if numbers[minIndex] > numbers[j] {
                minIndex = j
            }
        }
        
        if i != minIndex {
            let temp = numbers[i]
            numbers[i] = numbers[minIndex]
            numbers[minIndex] = temp
        }
    }
    print("Mảng sau khi được sắp xếp tăng dần: \(numbers)")
}
