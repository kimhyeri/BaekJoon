//
//  Test.swift
//  codingTest
//
//  Created by hyeri kim on 31/01/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

func solution(_ v: [[Int]]) -> [Int] {
    var ans = [Int]()
    
    let x = v[0][0]^v[1][0]^v[2][0]
    let y = v[0][1]^v[1][1]^v[2][1]
    ans = [x,y]
    return ans
}

print(solution([[1, 4], [3, 4], [3, 10]]))
print(solution([[1, 1], [2, 2], [1, 2]])) 

