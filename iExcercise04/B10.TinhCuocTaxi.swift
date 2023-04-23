//
//  B10.TinhCuocTaxi.swift
//  iExcercise04
//
//  Created by Minh Tan Vu on 23/04/2023.
//

import Foundation

/*
 Viết chương trình tính tiền cước taxi theo lựa chọn hãng và loại xe với bảng giá dịch vụ
 */

func taxiFare() {
    
    var distance: Double = 0
    var totalFare: Double = 0
    var carType: String = ""
    
    print("""
            Lựa chọn hãng xe:
            1. Mai Linh
            2. Vinasun
            3. Vinataxi
            4. Group
            5. G7
            6. Sao Mai
            7. GSM
            """)
    let company = readLine()!
    
    switch company {
        
    case "1":
        print("""
                Vui lòng chọn loại xe:
                --1. 4 chỗ nhỏ
                --2. 4 chỗ lớn
                --3. 7 chỗ
                """)
        carType = readLine()!
        print("Nhập vào khoảng cách muốn di chuyển: ")
        distance = Double(readLine()!) ?? 1
            
        switch carType {
        case "1":
            fare(baseFare: 20000, minDistance: 1.28, shortDistance: 30, shortPrice: 14500, longPrice: 12000)
        case "2":
            fare(baseFare: 20000, minDistance: 1.28, shortDistance: 30, shortPrice: 16000, longPrice: 12700)
        case "3":
            fare(baseFare: 20000, minDistance: 1.28, shortDistance: 30, shortPrice: 17600, longPrice: 14300)
        default:
            break
        }
        
    case "2":
        print("""
                Vui lòng chọn loại xe:
                --1. 4 chỗ
                --2. 7 chỗ
                """)
        let carType = readLine()
        print("Nhập vào khoảng cách muốn di chuyển: ")
        distance = Double(readLine()!) ?? 1
        
        switch carType {
        case "1":
            fare(baseFare: 11000, minDistance: 0.5, shortDistance: 31, shortPrice: 17600, longPrice: 14500)
        case "2":
            fare(baseFare: 12000, minDistance: 0.5, shortDistance: 31, shortPrice: 19600, longPrice: 17100)
        default:
            break
        }
        
    case "3":
        print("""
                Vui lòng chọn loại xe:
                --1. 4 chỗ
                --2. 7 chỗ
                """)
        let carType = readLine()
        print("Nhập vào khoảng cách muốn di chuyển: ")
        distance = Double(readLine()!) ?? 1
        
        switch carType {
        case "1":
            fare(baseFare: 11000, minDistance: 0.5, shortDistance: 31, shortPrice: 17100, longPrice: 13600)
        case "2":
            fare(baseFare: 12000, minDistance: 0.5, shortDistance: 31, shortPrice: 19100, longPrice: 15100)
        default:
            break
        }
        
    case "4":
        print("""
                Vui lòng chọn loại xe:
                --1. Xe Vios
                --2. Xe Innova
                --3. Xe Eco
                """)
        carType = readLine()!
        print("Nhập vào khoảng cách muốn di chuyển: ")
        distance = Double(readLine()!) ?? 1
            
        switch carType {
        case "1":
            fare(baseFare: 20000, minDistance: 0.9,shortDistance: 25, shortPrice: 17600, longPrice: 14400)
        case "2":
            fare(baseFare: 20000, minDistance: 0.9, shortDistance: 25, shortPrice: 19600, longPrice: 16200)
        case "3":
            fare(baseFare: 20000, minDistance: 1.5, shortDistance: 25, shortPrice: 14300, longPrice: 12300)
        default:
            break
        }
        
    case "5":
        
        print("""
                Vui lòng chọn loại xe:
                --1. 4 chỗ nhỏ
                --2. 4 chỗ lớn
                --3. 7 chỗ
                """)
        carType = readLine()!
        print("Nhập vào khoảng cách muốn di chuyển: ")
        distance = Double(readLine()!) ?? 1
            
        switch carType {
        case "1":
            fare(baseFare: 20000, minDistance: 1.379, shortDistance: 20, shortPrice: 12000, longPrice: 12000)
        case "2":
            fare(baseFare: 20000, minDistance: 1.25, shortDistance: 20, shortPrice: 13000, longPrice: 13000)
        case "3":
            fare(baseFare: 20000, minDistance: 1.143, shortDistance: 20, shortPrice: 14500, longPrice: 14500)
        default:
            break
        }
        
    case "6":
        print("""
                Vui lòng chọn loại xe:
                --1. 4 chỗ nhỏ
                --2. 4 chỗ lớn
                """)
        carType = readLine()!
        print("Nhập vào khoảng cách muốn di chuyển: ")
        distance = Double(readLine()!) ?? 1
            
        switch carType {
        case "1":
            fare(baseFare: 20000, minDistance: 1.5,shortDistance: 20, shortPrice: 13500, longPrice: 11500)
        case "2":
            fare(baseFare: 20000, minDistance: 1.4, shortDistance: 20, shortPrice: 14500, longPrice: 12500)
        default:
            break
        }
        
    case "7":
        print("Loại xe: VinFast VF e34")
        print("Nhập vào khoảng cách muốn di chuyển: ")
        distance = Double(readLine()!) ?? 1
        
        fare(baseFare: 20000, minDistance: 1, shortDistance: 25, shortPrice: 15500, longPrice: 12500)
    default:
        break
    }
    
    func fare(baseFare: Double, minDistance: Double, shortDistance: Double, shortPrice: Double, longPrice: Double) {
        if distance <= minDistance {
            totalFare = baseFare
        } else if distance <= shortDistance {
            totalFare = baseFare + shortPrice*(distance-minDistance)
        } else {
            totalFare = baseFare + shortPrice*(shortDistance-minDistance) + longPrice*(distance-shortDistance-minDistance)
        }
        let roundedFare = Int(round(totalFare/100)*100)
        print("Tống cước phí Taxi là: \(roundedFare) VNĐ")
    }
}
