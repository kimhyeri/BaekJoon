//
//  TravelPath.swift
//  Test
//
//  Created by hyeri kim on 02/11/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

// 시간초과
func solution(_ tickets:[[String]]) -> [String] {
    var answer = ["ICN"]
    var value = "ICN"
    var dictionary = [String:[String]]()

    for i in tickets {
        if var value = dictionary[i.first!] {
            value.append(i.last!)
            dictionary.updateValue(value.sorted(), forKey: i.first!)
        } else {
            dictionary.updateValue([i.last!], forKey: i.first!)
        }
    }
    
    while true {
        if dictionary.isEmpty { break } // dictionary가 빌때까지
        if var ans = dictionary[value] { // 알파벳순으로 정렬
            let temp = value
            value = ans.removeFirst()
            answer.append(value)
            if ans.isEmpty {
                dictionary[temp] = nil 
            } else {
                dictionary.updateValue(ans, forKey: temp)
            }
        }
    }
    
    return answer
}
