//
//  GuessString.swift
//  AlgorithmProject
//
//  Created by hyeri kim on 14/05/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

let N = Int(readLine()!)!
var number = ((2 * N) - 2)
var array = [String]()
var minmax = [Int:Int]()

for i in 0..<number {
    let S = readLine()!
    array.append(S)
    minmax.updateValue(S.count, forKey: i)
}

let arr = minmax.sorted(by: { $0.value < $1.value })
var minnum = arr.first?.value
var maxnum = arr.last?.value

var min = Set(minmax.filter({ $0.value == minnum }).map({ array[$0.key] }))
var max = Set(minmax.filter({ $0.value == maxnum }).map({ array[$0.key] }))
var mix: Set<String> = Set<String>() 

for i in min {
    for j in max {
        if i == j { break }
        var make = i + j
        mix.insert(make)
        make = j + i
        mix.insert(make)
    }
}

var answer = ""
var check = false

for i in mix {
    check = false
    for j in array {
        if i.hasPrefix(j) || i.hasSuffix(j) {
        } else {
            check = true
            break
        }
    }
    if !check , answer.count != i.count {
        answer = i
    }
}

var answerArr = ""
var duplicated = [String:Int]()

for i in array {
    if let _ = duplicated[i] {
        answerArr.append(contentsOf: "S")
    } else {
        duplicated.updateValue(0, forKey: i)
        if answer.hasPrefix(i) {
            answerArr.append(contentsOf: "P")
        } else {
            answerArr.append(contentsOf: "S")
        }     
    }
}

print(answer)
print(answerArr)
