//
//  Big.swift
//  AlgorithmProject
//
//  Created by hyeri kim on 10/05/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

typealias Person = (w: Int, h: Int, num: Int)

let N = Int(readLine()!)!
var arr = [Person]()

for _ in 1...N {
    let read = readLine()?.components(separatedBy: " ")
    arr.append(Person(Int(read![0])!, Int(read![1])!, 1))
}

for i in 0..<N {
    for j in 0..<N {
        if i == j {continue}
        else if arr[i].w < arr[j].w && arr[i].h < arr[j].h {
            arr[i].num += 1
        } 
    }
}

print(arr.map({String($0.num)}).joined(separator: " "))
