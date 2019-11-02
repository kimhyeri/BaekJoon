//
//  MockExam.swift
//  Test
//
//  Created by hyeri kim on 02/11/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

let patternA = [1,2,3,4,5]
let patternB = [2,1,2,3,2,4,2,5]
let patternC = [3,3,1,1,2,2,4,4,5,5]

func solution(_ answers:[Int]) -> [Int] {
    var answer = [0,0,0]
    var a = [Int]()
    
    for i in 0 ..< answers.count {
        if answers[i] == patternA[i % patternA.count] {
            answer[0] = answer[0] + 1
        }
        if answers[i] == patternB[i % patternB.count] {
            answer[1] = answer[1] + 1
        }
        if answers[i] == patternC[i % patternC.count] {
            answer[2] = answer[2] + 1
        }
    }
    
    let max = answer.max()

    for i in 0..<answer.count {
        if answer[i] == max {
            a.append(i+1)
        }
    }
    
    return a.sorted()
}

print(solution([1,2,3,4,5,1,1,1,1,1,1,1,1,1]))
print(solution([1,3,2,4,2]))
