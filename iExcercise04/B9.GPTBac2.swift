//
//  B9.GPTBac2.swift
//  iExcercise04
//
//  Created by Minh Tan Vu on 23/04/2023.
//

import Foundation
/*
 Giải phương trình bậc 2 ax^2 + bx + c = 0
 */

func quadraticEquation() {
    
    var a = 0.0
    var b = 0.0
    var c = 0.0
    
    print("Nhập lần lượt hệ số của phương trình bậc 2 dạng ax^2 + bx + c = 0. (a ≠ 0)")
    inputData(&a, &b, &c)
    
    while a == 0 {
        print("Nhập sai định dạng. Vui lòng nhập a ≠ 0")
        inputData(&a, &b, &c)
    }
    
    let delta = pow(b, 2) - 4*a*c
    
    if delta < 0 {
        print("Phương trình vô nghiệm.")
    } else if delta == 0 {
        print("Phương trình có nghiệm kép là x1 = x2 = \(-b/2*a)")
    } else {
        let x1 = (-b + sqrt(delta)) / 2*a
        
        let x2 = (-b - sqrt(delta)) / 2*a
        
        print("Phương trình có 2 nghiệm phân biệt là \nx1 = \(x1) \nx2 = \(x2)")
    }
    
    func inputData(_ a: inout Double, _ b: inout Double, _ c: inout Double) {
        print("a = ", terminator: "")
        a = Double(readLine()!) ?? 1.0
        print("b = ", terminator: "")
        b = Double(readLine()!) ?? 1.0
        print("c = ", terminator: "")
        c = Double(readLine()!) ?? 0.0
    }
}
