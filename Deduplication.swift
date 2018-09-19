//
//  Deduplication.swift
//  Algo
//
//  Created by hyerikim on 2018. 9. 19..
//  Copyright © 2018년 hyerikim. All rights reserved.
//

import Foundation

let a = Int(readLine()!)!
var array = Array<Int>()

for _ in 0..<a {
    let b = Int(readLine()!)!
    array.append(b)
}

let d  = Set(array)
let e = d.sorted()

for i in e {
    print(i)
}
