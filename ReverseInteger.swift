//
//  ReverseInteger.swift
//  Testing
//
//  Created by hyeri kim on 30/12/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

func reverse(_ x: Int) -> Int {    
    let stringValue = String(x)
    var value = String(stringValue.reversed())
    
    if stringValue.hasPrefix("-") {
        value.removeLast()
        value.insert("-", at: value.startIndex)
    } 
    
    if let intValue = Int32(value) {
        return Int(intValue)
    }
    return 0
}   

print(reverse(123))
print(reverse(-123))
print(reverse(120))
