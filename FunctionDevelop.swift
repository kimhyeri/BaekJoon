//
//  FunctionDevelop.swift
//  Testing
//
//  Created by hyeri kim on 27/10/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    
    var answerArray = [Int]()
    var answerArr = [Int]()

    for (i,j) in zip(progresses, speeds) {
        var answer = i
        var day = 1

        while true {
            if answer >= 100 { break }
            answer = answer + j
            day += 1
        }
        answerArray.append(day)
    }
    
    for i in 0 ..< answerArray.count-1 {
        var count = 0
        let temp = answerArray[i]
        for j in i+1 ..< answerArray.count {
            if temp > j {
                count += 1
            } 
        }
        answerArr.append(count)
    }
    return answerArr
}

print(solution([93,30,55], [1,30,5]))
