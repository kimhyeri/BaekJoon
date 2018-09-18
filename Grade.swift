//
//  Grade.swift
//  Algo
//
//  Created by hyerikim on 2018. 9. 19..
//  Copyright © 2018년 hyerikim. All rights reserved.
//

import Foundation

let a = Int(readLine()!)!

switch a {
case 90...100 :
    print("A")
case 80...89 :
    print("B")
case 70...79 :
    print("C")
case 60...69 :
    print("D")
default :
    print("F")
}
