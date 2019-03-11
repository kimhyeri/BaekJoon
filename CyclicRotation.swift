//
//  CyclicRotation.swift
//  functions
//
//  Created by hyeri kim on 11/03/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

func solution(_ A : [Int], _ K : Int) -> [Int] {
    var arr = [Int:Int]()
    for i in 0..<A.count {
        let index = (i + K) % A.count
        arr.updateValue(A[i], forKey: index)
    }
    return arr.sorted{$0 < $1}.map({ $0.value })
}

print(solution([3, 8, 9, 7, 6], 3))
