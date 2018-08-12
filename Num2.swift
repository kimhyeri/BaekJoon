//
//  Num2.swift
//  LineTest
//
//  Created by hyerikim on 2018. 8. 12..
//  Copyright © 2018년 hyerikim. All rights reserved.
//

import Foundation

//TEST Number2
let myX = Int(readLine()!)!
let myY = Int(readLine()!)!
let store = Int(readLine()!)!
var array = ""
var dict : [Int:[Any]] = [:]

for _ in 0..<store {
    let line = readLine()!
    let lineArr = line.components(separatedBy: " ")
    let storeX = Int(lineArr[0])!
    let storeY = Int(lineArr[1])!
    let storeName = lineArr[2]
    let coupon = Int(lineArr[3])!
    
    let dis = ((storeX - myX) * (storeX - myX)) + ((storeY - myY) * (storeY - myY))
    let disrt = sqrt(Double(dis))
    if disrt < 100 {
        dict.updateValue([storeX, storeY, storeName, coupon], forKey: 0)
    }else {
        let key = disrt - disrt.truncatingRemainder(dividingBy: 100)
        dict.updateValue([storeX, storeY, storeName, coupon], forKey: Int(key))
    }
}

let sorted = dict.sorted {
    if $0.key < $1.key {
        return $0.key < $1.key
    }
    else{
        return $0.value[3] as! Int > $1.value[3] as! Int
    }}
for value in sorted {
    print("\(value.value)")
}
