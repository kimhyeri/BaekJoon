//
//  Star.swift
//  Algo
//
//  Created by hyerikim on 2018. 9. 19..
//  Copyright © 2018년 hyerikim. All rights reserved.
//

import Foundation

let a = Int(readLine()!)!
var b = ""
var count = 0

for i in 1...a {
    count = i
    while true {
        if count == 0 {break}
        b.append("*")
        count -= 1
    }
    print(b)
    b = ""
}
