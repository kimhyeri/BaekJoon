//
//  Multiply.swift
//  Test
//
//  Created by hyeri kim on 14/11/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

let a = readLine()!
let b = readLine()!

var array = [Int]()

for i in b {
    array.append(Int(a)! * Int(String(i))!)
}

array.reverse()

var sum = 0

for i in 0..<array.count {
    print(array[i])
    sum += array[i] * Int(pow(Double(10), Double(i)))
}

print(sum)
