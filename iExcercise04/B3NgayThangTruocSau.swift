//
//  B3NgayThangTruocSau.swift
//  iExcercise04
//
//  Created by Minh Tan Vu on 22/04/2023.
//

import Foundation
/*
 Cho ngày tháng năm bất kỳ, in ra ngày tháng năm liền trước và liền sau ngày đó.
 */

/*
func dayBeforeAfter(_ date: String) {
    
    let dateArray = date.components(separatedBy: CharacterSet(charactersIn: "/-."))
    
    let currentDay = Int(dateArray[0]) ?? 1
    let currentMonth = Int(dateArray[1]) ?? 1
    let currentYear = Int(dateArray[2]) ?? 1900
    
    var daysOfMonth: [Int : Int]
    
    var previousDay: Int
    var nextDay: Int
    
    if isLeapYear(currentYear) {
        daysOfMonth = [1 : 31, 2 : 29, 3 : 31, 4 : 30, 5 : 31, 6 : 30, 7 : 31, 8 : 31, 9 : 30, 10 : 31, 11 : 30, 12 : 31]
        if currentDay == 1 {
        }
        
        
    } else {
        daysOfMonth = [1 : 31, 2 : 28, 3 : 31, 4 : 30, 5 : 31, 6 : 30, 7 : 31, 8 : 31, 9 : 30, 10 : 31, 11 : 30, 12 : 31]
    }
    
    
    
    func printDate(day: Int, month: Int, year: Int) {
        print("Ngày liền trước ngày đã nhập là: \(day)/\(month)/\(year)")
        print("Ngày liền sau ngày đã nhập là: \(day)/\(month)/\(year)")
    }
    
    
    func isLeapYear(_ year: Int) -> Bool {
        if (year % 4 == 0 && year % 100 != 0 ) || year % 400 == 0 {
            return true
        }
        return false
    }
}

*/
