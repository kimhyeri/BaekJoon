//
//  BC1.swift
//  SwiftPrac
//
//  Created by hyerikim on 31/12/2018.
//  Copyright © 2018 hyerikim. All rights reserved.
//

import Foundation

func solution(_ p: Int) -> Int {
    var answer = p, tempAns = p
    
    while true {
        tempAns += 1
        var check = false // 겹치는게 없을때 false
        
        let bYearArr = String(tempAns).map{Int(String($0))!}
        var checkArray = [Int](repeating: 0, count: 10)
        
        for i in bYearArr {
            if checkArray[i] > 0 {
                check = true
                break
            }
            checkArray[i] += 1
        }
        
        if check == false && answer < tempAns {
            answer = tempAns
            break
        }
        
    }
    
    return answer
}

print(solution(1987))
print(solution(2015))
