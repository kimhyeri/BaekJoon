//
//  Vacation.swift
//  algorithm
//
//  Created by hyeri kim on 17/06/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

let L = Int(readLine()!)!
let A = Int(readLine()!)!
let B = Int(readLine()!)!
let C = Int(readLine()!)!
let D = Int(readLine()!)!
var answer = 0

if A%C == 0 {
    if B%D == 0 {
        answer = max(A/C , B/D)
    } else {
        answer = max(A/C , B/D + 1)
    }
} else {
    if B%D == 0 {
        answer = max(A/C + 1, B/D)
    } else {
        answer = max(A/C + 1, B/D + 1)
    }
}

let final = L - answer
final < 0 ? print(0) : print(final)
