//
//  B5ChenXSauMax.swift
//  iExcercise04
//
//  Created by Minh Tan Vu on 23/04/2023.
//

import Foundation
/*
 Chèn phần tử có giá trị X vào phía sau phần tử có giá trị lớn nhất trong mảng.
 */

func insertAfterMax(x: Int, numbers: inout [Int]) {
    
    var maxIndex = 0
    
    for i in 1..<numbers.count {
        if numbers[maxIndex] < numbers[i] {
            maxIndex = i
        }
    }
    numbers.insert(x, at: maxIndex + 1)
    print(numbers)
}
