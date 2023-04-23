//
//  TinhDoiXung.swift
//  iExcercise04
//
//  Created by Minh Tan Vu on 23/04/2023.
//

import Foundation
/*
 Kiểm tra tính đối xứng của một số
 */

func isSymmetricalNumber(n: Int){
    
    var str = String(n)
    
    //Loại bỏ chữ số "0" nếu người dùng cố ý truyền vào số dạng 0xxxx
    while str.first == "0" {
        str.remove(at: str.startIndex)
    }
    
    //Đảo ngược chuỗi
    var reversedString = ""
    
    for char in str {
        reversedString = String(char) + reversedString
    }
    //Nếu chuỗi số ban đầu và chuỗi đảo ngược bằng nhau thì là số đối xứng
    if reversedString == str {
        print("\(n) là số đối xứng.")
    } else {
        print("\(n) không phải là số đối xứng")
    }
}
