//
//  Snail.swift
//  AlgorithmProject
//
//  Created by hyeri kim on 10/06/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

let str = readLine()!.components(separatedBy: " ").map({Int($0)})
let A = str[0]! // 낮 올라가기
let B = str[1]! // 밤 미끄러지기
let V = str[2]! // 총 미터
var count = A - B
var day = V - B
var answer = 0 // 걸린 날짜

if day % count == 0 {
    answer = day/count
} else {
    answer = day/count + 1
}

print(answer)
