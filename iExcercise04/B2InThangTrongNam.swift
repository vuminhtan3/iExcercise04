//
//  InThangTrongNam.swift
//  iExcercise04
//
//  Created by Minh Tan Vu on 22/04/2023.
//

import Foundation
/*
 Cho năm bất kỳ, in ra số ngày của 12 tháng trong năm đó.
 */

func printDaysOfMonth(_ year: Int) {
    printDay(isLeapYear(year))
    
    func isLeapYear(_ year: Int) -> Bool {
        if (year % 4 == 0 && year % 100 != 0 ) || year % 400 == 0 {
            return true
        }
        return false
    }
    
    func printDay(_ isLeap: Bool) {
        for month in 1...12 {
            switch month {
            case 1, 3, 5, 7, 8, 10, 12:
                print("Tháng \(month) có 31 ngày.")
            case 4, 6, 9, 11:
                print("Tháng \(month) có 30 ngày.")
            default:
                if isLeap {
                    print("Tháng 2 có 29 ngày.")
                } else {
                    print("Tháng 2 có 28 ngày.")
                }
            }
            
        }
            
    }
}
