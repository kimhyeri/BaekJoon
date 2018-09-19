//
//  GradeAvg.swift
//  Algo
//
//  Created by hyerikim on 2018. 9. 20..
//  Copyright © 2018년 hyerikim. All rights reserved.
//

import Foundation

var sum = 0

for _ in 0..<5 {
    let a = Int(readLine()!)!
    if a < 40 {
        sum += 40
    } else {
        sum += a
    }
}

print(sum/5)
