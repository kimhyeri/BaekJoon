//
//  Network.swift
//  Test
//
//  Created by hyeri kim on 01/11/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

func solution(_ n:Int, _ computers:[[Int]]) -> Int {
    var answer = 0
    var visited = Array(repeating: false, count: n)
    
    func dfs(start: Int) {
        visited[start] = true
        for i in 0..<n {
            if !visited[i], computers[start][i] == 1 {
                dfs(start: i)
            }
        }
    }
    
    for i in 0..<n {
        if !visited[i] {
            answer += 1
            dfs(start: i)
        }
    }
    
    return answer
}

print(solution(3, [[1, 1, 0], [1, 1, 0], [0, 0, 1]]))
