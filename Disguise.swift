//
//  Disguise.swift
//  functions
//
//  Created by hyeri kim on 09/03/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var temp = 1
    var dictCnt = [String:Int]()
    for cloth in clothes {
        if let cnt = dictCnt[cloth[1]] {
            dictCnt.updateValue(cnt+1, forKey: cloth[1])
        } else {
            dictCnt.updateValue(1, forKey: cloth[1])
        }
    }
    for (_, value) in dictCnt {
        let val = value + 1
        temp = temp * val
    }
    return temp - 1
}

print(solution([["yellow_hat", "headgear"], ["blue_sunglasses", "eyewear"], ["green_turban", "headgear"]]))

print(solution([["crow_mask", "face"], ["blue_sunglasses", "face"], ["smoky_makeup", "face"]]))
