//
//  Connect.swift
//  Test
//
//  Created by hyeri kim on 30/10/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

let a = readLine()!.split(separator: " ").map{ Int($0)! }
let N = a.first!
let M = a.last!
var array = Array(repeating: Array(repeating: 0, count: N), count: N)
var visited = Array(repeating: 0, count: N)

for _ in 0..<M {
    let a = readLine()!.split(separator: " ").map{ Int($0)! - 1 }
    array[a.first!][a.last!] = 1
    array[a.last!][a.first!] = 1
}

var count = 1 

func dfs(x: Int, cnt: Int) {
    guard x < N else { return }
    visited[x] = cnt
    for i in 0..<N {
        if array[x][i] == 1, visited[i] == 0 {
            dfs(x: i, cnt: cnt)
        }
    }
}

for i in 0..<N {
    if visited[i] == 0 {
        dfs(x: i, cnt: count)
        count += 1
    }
}

print(count-1)
