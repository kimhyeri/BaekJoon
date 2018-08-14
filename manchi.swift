//
//  manchi.swift
//  Algo
//
//  Created by hyerikim on 2018. 8. 14..
//  Copyright © 2018년 hyerikim. All rights reserved.
//

import Foundation

let a = Int(readLine()!)!
for _ in 0...a{
    let n = Int(readLine()!)!
    if n < 5 || n > 100 { break }
    var rooms = [Bool](repeating: false, count: n)
    for i in 2...n {
        for j in i...n{
            if j % i == 0 {
                rooms[j-1] = !rooms[j-1]
            }
        }
    }
    var count = 0
    for i in 0..<rooms.count {
        if !rooms[i] {
            count = count+1
        }
    }
    print(count)
}
