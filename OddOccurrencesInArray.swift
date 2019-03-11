//
//  OddOccurrencesInArray.swift
//  functions
//
//  Created by hyeri kim on 11/03/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

func solution(_ A : [Int]) -> Int {
    var ans = 0
    var dict = [Int:Int]()
    for i in A {
        if let _ = dict[i] {
            dict[i] = nil
        } else {
            dict.updateValue(0, forKey: i)
        }
    }
    ans = dict.first?.key ?? 0
    return ans
}

print(solution([9,3,9,3,9,7,9]))
