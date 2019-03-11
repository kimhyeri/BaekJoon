//
//  Codility.swift
//  functions
//
//  Created by hyeri kim on 11/03/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

func solution(_ A : [Int]) -> Int {
    
    // 100% n or nlogn
    let a = Set(A.map({$0}))
    let b = Set(1...A.count)
    let c = b.subtracting(a).sorted()
    if let ans = c.first {
        return ans
    } 
    return A.count + 1
    
    // 55% n^2
    //    var a = [Int]()
    //    a.append(contentsOf: stride(from: 1, through: A.count, by: 1))
    //    let b = a.filter({ !A.contains($0) }).sorted()
    //    if let ans = b.first {
    //        return ans
    //    } else {
    //        return a.count + 1
    //    }
    
    // 66% n^2
    //    for a in 1 ... A.count{
    //        if !A.contains(a) {
    //            return a
    //        }
    //    }
    //    return A.count + 1
}

print(solution([1,3,6,4,1,2]))
print(solution([1,2,3]))
print(solution([-1,-3]))

