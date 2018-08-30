//
//  10164.swift
//  Algo
//
//  Created by hyerikim on 2018. 8. 31..
//  Copyright © 2018년 hyerikim. All rights reserved.
//

import Foundation

var map = [[Int]](repeating: Array(repeating: 0, count: 16), count: 16)
var d = [[Int]](repeating: Array(repeating: 0, count: 16), count: 16)

let a = readLine()!
let getA = a.components(separatedBy: " ")
let n = Int(getA[0])
let m = Int(getA[1])
let k = Int(getA[2])

d[1][1] = 1
var cnt = 0
var mx : Int?
var my : Int?

if k == 0 {
    mx = 1
    my = 1
}else{
    for i in 1 ... n!{
        for j in 1 ... m! {
            cnt = cnt + 1
            if (cnt == k){
                mx = i
                my = j
                break
            }
        }
    }
}

for i in 1...mx! {
    for j in 1...my!{
        d[i][j] = d[i][j] + d[i-1][j] + d[i][j-1]
    }
}

var x = d[mx!][my!]
d[mx!][my!] = 1

for i in mx!...n! {
    for j in my!...m! {
        if i == mx && j == my{
            continue
        }
        d[i][j] = d[i][j] + d[i-1][j] + d[i][j-1]
    }
}

var y = d[n!][m!]
print(x*y)
