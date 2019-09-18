//
//  RabinKarp.swift
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

extension Character {
    var ascii: Int {
        return numericCast(unicodeScalars.first!.value)
    }
}

func findString(parent: String, pattern: String) {
    let parentSize = parent.count
    let patternSize = pattern.count
    var parentHash = 0, patternHash = 0, power = 1
    for i in 0...parentSize - patternSize {
        if i == 0 {
            for j in 0..<patternSize {
                parentHash += parent[patternSize - 1 - j].ascii * power
                patternHash += pattern[patternSize - 1 - j].ascii * power
                if j < patternSize - 1 {
                    power = power * 2
                }
            }
        } else {
            let eachValue = parentHash - parent[i-1].ascii * power
            parentHash = 2 * eachValue + parent[patternSize - 1 + i].ascii
        } 
        if parentHash == patternHash {
            var finished = true
            for j in 0..<patternSize {
                if parent[i+j] != pattern[j] {
                    finished = false
                    break
                }
            }
            if finished {
                print("\(i+1) finded")
            }
        }
    }
}

let parent = "ababacabacaabacaaba"
let pattern = "abacaaba"
findString(parent: parent, pattern: pattern)
