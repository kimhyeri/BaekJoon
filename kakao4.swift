//
//  kakao4.swift
//  Algo
//
//  Created by hyerikim on 2018. 9. 15..
//  Copyright © 2018년 hyerikim. All rights reserved.
//

import Foundation

func solution(_ food_times:[Int], _ k:Int64) -> Int {
    var result = 0
    var final = 1
    var time = food_times
    var intValue = NSNumber(value: k).intValue
    var j = Int()
    
    for i in 0..<food_times.count {
        result = result + time[i]
    }
    
    if result < intValue {
        return -1
    }
    
    for i in 0...result {
        if i == intValue {
            return final % time.count
        }else {
            j = i % time.count
            if time[j] != 0 {
                final = final + 1
                time[j] = time[j] - 1
            }else {
                final = final + 1
                intValue = intValue + 1
                result = result + 1
            }
        }
    }
    return final
}
