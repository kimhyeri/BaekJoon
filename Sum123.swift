//
//  Sum123.swift
//  AlgorithmProject
//
//  Created by hyeri kim on 14/05/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

// 미리 구해준다.
// 11보다 작게 나오니까 array사이즈는 11로 잡는다.
var array = Array(repeating: 0, count: 11)
array[0] = 1

for i in 1..<11 {
    for j in 1...3 {
        if i >= j {
            array[i] += array[i-j] 
        }
    }
}

var T = Int(readLine()!)!
while T > 0 {    
    let n = Int(readLine()!)!
    print(array[n])
    T -= 1
}
