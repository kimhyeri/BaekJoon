//
//  OxQuiz.swift
//  Algo
//
//  Created by hyerikim on 2018. 9. 24..
//  Copyright © 2018년 hyerikim. All rights reserved.
//

import Foundation

let a = Int(readLine()!)!
var array = Array<Character>()
var count = 0

for _ in 0..<a {
    let b = readLine()
    var sum = 0
    count = 0
    
    array = Array(b!)
    for i in array {
        if i == "O" {
            count += 1
            sum += count
        }else {
            count = 0
        }
    }
    print(sum)
}
