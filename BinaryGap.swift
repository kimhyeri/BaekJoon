//
//  BinaryGap.swift
//  functions
//
//  Created by hyeri kim on 11/03/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

// 100% 
func solution(_ N : Int) -> Int {
    var cnt = 0
    var check = false
    var binary = [Int]()
    var binaryArr = [Int]()
    var a = N
    while a != 1 {
        binary.append(a % 2)
        a = a / 2
    }
    binary.append(a)    
    for i in binary {
        if i == 1, check == true { 
            binaryArr.append(cnt)
            cnt = 0 
            check = false
        } else if i == 0, check == true { 
            cnt += 1 
        }
        if i == 1, check == false {
            check = true 
        }
    }
    if let ans = binaryArr.sorted().max() {
        return ans
    } 
    return 0
}

print(solution(20))
print(solution(15))
print(solution(32))
print(solution(9))
print(solution(529))
