//
//  kakao1.swift
//  Testing
//
//  Created by hyeri kim on 10/09/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

// #1

extension String {
    func split(by length: Int) -> [String] {
        var startIndex = self.startIndex
        var results = [Substring]()
        while startIndex < self.endIndex {
            let endIndex = self.index(startIndex, offsetBy: length, limitedBy: self.endIndex) ?? self.endIndex
            results.append(self[startIndex..<endIndex])
            startIndex = endIndex
        }
        return results.map { String($0) }
    }
}

func solution(_ s: String) -> Int {
    var answer = 0 // 가장 짧은 길이의 암호문 dictionary value 
    var stringValue = "" // 새롭게 만들어지는 암호문
    var copyString = [String]()
    var dictionary = [Int: Int]() // 자른 개수의 길이를 가지는 딕셔너리
    
    for i in 1...s.count {
        let compareArray = s.split(by: i)
        copyString = compareArray
        var beforeValue = compareArray.first
        var count = 0 // defualt value 
        for j in 0..<compareArray.count {
            if beforeValue == compareArray[j] { // 이전과 값이 같을 때
                count += 1
                if j == compareArray.count {
                    break
                } 
                copyString.removeFirst()
            } else { // 이전과 값이 다를 때
                if count == 1 { 
                    stringValue.append(beforeValue!)
                    copyString.removeFirst()
                } else {
                    stringValue.append("\(count)\(beforeValue!)")
                    copyString.removeFirst()
                }
                count = 1
            }
            beforeValue = compareArray[j]
        }
        if count == 1{
            stringValue.append(beforeValue!)
        } else {
            stringValue.append("\(count)\(beforeValue!)")
        }
        dictionary.updateValue(stringValue.count, forKey: i)
        stringValue.removeAll()
    }
    answer = dictionary.sorted(by: { $0.1 < $1.1} ).first!.value
    return answer 
}

let s = ["aabbaccc", 
         "ababcdcdababcdcd",
         "abcabcdede", 
         "abcabcabcabcdededededede",
         "xababcdcdababcdcd"
]

for i in s {
    print(solution(i))
}
