//
//  KMP.swift
//  Testing
//
//  Created by hyeri kim on 18/09/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

extension String {
    subscript(index: Int) -> Character {
        let charIndex: String.Index
        if index >= 0 {
            charIndex = self.index(self.startIndex, offsetBy: index)
        } else {
            charIndex = self.index(self.endIndex, offsetBy: index)
        }
        return self[charIndex]
    }
}

func makeTable(pattern: String) -> [Int] {
    let patternSize = pattern.count // 문자열 길이
    var table = Array(repeating: 0, count: patternSize) // 사이즈만큼 배열 만들기
    
    var j = 0 
    for i in 1..<patternSize {
        while j > 0 && pattern[i] != pattern[j] {
            j = table[j-1]
        }
        if pattern[i] == pattern[j] {
            j = j + 1
            table[i] = j
        }
    }
    return table
}

func KMP(parent: String, pattern: String) {
    let parentSize = parent.count
    let patternSize = pattern.count
    var table = makeTable(pattern: pattern)
    var j = 0 
    for i in 0..<parentSize {
        while j > 0 , parent[i] != pattern[j] {
            j = table[j-1]
        }
        if parent[i] == pattern[j] {
            if j == patternSize - 1 {
                print("\(i - patternSize + 2) index founded")
                j = table[j]
            } else {
                j = j + 1
            }
        }
    }
}

let parent = "ababacabacaabacaaba"
let pattern = "abacaaba"
KMP(parent: parent, pattern: pattern)

//00101123
