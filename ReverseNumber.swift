//
//  ReverseNumber.swift
//  Algo
//
//  Created by hyerikim on 2018. 9. 19..
//  Copyright © 2018년 hyerikim. All rights reserved.
//

import Foundation

let a = readLine()!
let getA = a.components(separatedBy: " ")

let b = Int(String(getA[0].reversed()))
let c = Int(String(getA[1].reversed()))
var result = b! > c! ? b : c
print(result!)
