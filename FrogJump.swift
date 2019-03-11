//
//  FrogJump.swift
//  functions
//
//  Created by hyeri kim on 11/03/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
// O(1)
    let initial = Y - X
    let ans = initial / D
    print(ans * D)
    if ans * D >= initial {
        return ans
    } else {
        return ans + 1
    }
    
//    O(n) 효율성 구림
//    var sum = 0
//    var count = 0
//    sum += X
//    while Y > sum {
//        sum += D
//        count += 1
//    }
//    return count
}

print(solution(1, 5, 2))
print(solution(10,85,30))
