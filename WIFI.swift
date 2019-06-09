//
//  WIFI.swift
//  AlgorithmProject
//
//  Created by hyeri kim on 10/06/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

let str = readLine()!.components(separatedBy: " ")
let n = Int(str[0])!
let c = Int(str[1])!

var array = [Int]()

for i in 0..<n {
    array[i] = Int(readLine()!)!
}
array.sort()

var left = 1
var right  = array[n-1] - array[0]
var distance = 0
var answer = 0

while left <= right {
    let mid = ((left + right)/2)
    var start = array[0]
    var cnt = 1
    
    for i in 1..<n {
        distance = array[i] - start
        if mid <= distance {
            cnt += 1
            start = array[i]
        }
    }
    if cnt >= c {
        answer = mid 
        left = mid + 1
    } else {
        right = mid - 1
    }
}

print(answer)
