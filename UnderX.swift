//
//  UnderX.swift
//  Algo
//
//  Created by hyerikim on 2018. 9. 22..
//  Copyright © 2018년 hyerikim. All rights reserved.
//

import Foundation

let a = readLine()
let getA = a?.components(separatedBy: " ")
let b = Int(getA![0])
let c = Int(getA![1])

var array = Array<Int>()

let d = readLine()
let getB = d?.components(separatedBy: " ")

for i in 0..<b! {
    if c! > Int(getB![i])!{
        array.append(Int(getB![i])!)
    }
}

print(array)
