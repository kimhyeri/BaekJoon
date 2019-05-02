//
//  OrganicCabbage .swift
//  algorithm
//
//  Created by hyeri kim on 02/05/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

struct Stack<T> {
    var stack = [T]()
    
    mutating func push(element: T) {
        stack.append(element)
    }
    
    mutating func pop() -> T? {
        return stack.popLast()
    }
    
    func isEmpty() -> Bool {
        return stack.isEmpty
    }
}

struct Point {
    var x = 0
    var y = 0
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}

let x = [0,0,-1,1]
let y = [1,-1,0,0]

var T = Int(readLine()!)! 

func createGraph() -> Int {
    let read = readLine()!.split(separator: " ")
    
    let M = Int(String(read[0]))! 
    let N = Int(String(read[1]))! 
    let K = Int(String(read[2]))!
    
    var array = Array(repeating: Array(repeating: 0, count: N), count: M)
    var visited = Array(repeating: Array(repeating: false, count: N), count: M)
    var answer = 0
    
    for _ in 0..<K {
        let line = readLine()!.split(separator: " ")
        let x = Int(String(line[0]))!
        let y = Int(String(line[1]))!
        array[x][y] = 1
    }
    
    func DFS(point: Point) {
        var stack = Stack<Point>()
        stack.push(element: point) 
        visited[point.x][point.y] = true
        
        while !stack.isEmpty() {
            let my = stack.pop()
            
            for i in 0..<4 {
                let myX = my!.x + x[i]
                let myY = my!.y + y[i]
                
                if myX >= 0 && myY >= 0 && myX < M && myY < N {
                    if array[myX][myY] == 1 && !visited[myX][myY] {
                        stack.push(element: Point(x: myX, y: myY))
                        visited[myX][myY] = true
                    }   
                }
            }
        }
    }
    
    for i in 0..<M {
        for j in 0..<N {
            if !visited[i][j] && array[i][j] == 1 {
                DFS(point: Point(x: i, y: j))
                answer += 1
            }
        }
    }
    return answer
}

while T > 0 {
    print(createGraph())
    T -= 1
}
