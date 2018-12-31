//
//  BC2.swift
//  SwiftPrac
//
//  Created by hyerikim on 31/12/2018.
//  Copyright © 2018 hyerikim. All rights reserved.
//

import Foundation

func solution(_ s: String, _ cipher: String) -> Bool {
    var answer = false
    var dict = [Character:Character]()
    let sequence = zip(s, cipher)
    
    for (i,j) in sequence {
        if let value = dict[i] {
            if j == value {
                continue
            } else {
                return false
            }
        }
        dict.updateValue(j, forKey: i)
    }
    answer = true
    return answer
}

print(solution("hello", "cbvvu"))
print(solution("hello", "bbvmu"))
print(solution("world", "abcde"))

