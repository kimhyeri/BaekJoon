//
//  MiddleValue.swift
//  Algo
//
//  Created by hyerikim on 2018. 9. 20..
//  Copyright © 2018년 hyerikim. All rights reserved.
//

import Foundation

let a = readLine()!
let getA = a.components(separatedBy: " ")
var array = Array<Int>()
array.append(Int(getA[0])!)
array.append(Int(getA[1])!)
array.append(Int(getA[2])!)
array = array.sorted()
print(array[1])
