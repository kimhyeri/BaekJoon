//
//  ToOctal.swift
//  Sort
//
//  Created by hyeri kim on 17/09/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

func decimalToOctal(num: Int) -> String {
    var answer = ""
    var quotient = num
    var remainder = 0
    
    repeat {
        remainder = quotient % 8
        answer.append("\(remainder)")
        quotient = quotient / 8
    } while quotient > 8
    answer.append("\(quotient)")
    answer = String(answer.reversed()) // in swift 5.0
    return answer
}

print(decimalToOctal(num: 15))
