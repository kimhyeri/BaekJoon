//
//  Bridge.swift
//  Algo
//
//  Created by hyerikim on 2018. 8. 15..
//  Copyright © 2018년 hyerikim. All rights reserved.
//

import Foundation

var sum = 0
var t = Int(readLine()!)!
var count = 1
for _ in 0..<t {
    let n = Int(readLine()!)!
    let m = Int(readLine()!)!
    var array = [Int](repeatElement(1, count: m))
    for _ in 1..<n {
        for j in 1..<(m-count) {
            array[j] = array[j] + array[j-1]
        }
        count = count + 1
    }
    for i in 0..<m-n+1 {
        sum = sum + array[i]
    }
    print(sum)
    sum = 0
    count = 1
}
