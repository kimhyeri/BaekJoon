//
//  laboratory.swift
//  algorithm
//
//  Created by hyeri kim on 26/06/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

let dx = [1,0,-1,0]
let dy = [0,1,0,-1]

struct Queue<T> {
    var queue = [T]()
    
    mutating func enqueue(element: T) {
        queue.append(element)
    }
    
    mutating func dequeue() -> T? {
        return queue.removeFirst()
    }
    
    func isEmpty() -> Bool {
        return queue.isEmpty
    }
}

struct Point {
    let x: Int
    let y: Int
    
    init(x: Int, y: Int) {
        self.x = x 
        self.y = y
    }
}

let str = readLine()!.components(separatedBy: " ").map({ Int($0) })
let N = str[0]!
let M = str[1]!
var array = [[Int]]()
var copyArr = [[Int]]()

var check = [Point]()
var max = 0

func DFS(x: Int, y:Int) {
    for i in 0..<4 {
        let x = dx[i] + x
        let y = dy[i] + y
        
        if x >= 0 , y >= 0, x<N, y<M {
            if copyArr[x][y] == 0 {
                copyArr[x][y] = 2
                DFS(x: x, y: y)
            }
        }
    }
}

for i in 0..<N {
    let line = readLine()!.components(separatedBy: " ").map({ Int($0)! })
    array.append(line)
    copyArr.append(line)
    
    for j in 0..<M {
        let element = copyArr[i][j]        
        if element == 0 {
            check.append(Point(x: i, y: j))
        }
    }
}

for i in 0..<check.count-2 {
    for j in i+1..<check.count-1 {
        for k in j+1..<check.count {
            let one = check[i]
            let two = check[j]
            let three = check[k]
            
            for q in 0..<N {
                for z in 0..<M {
                    copyArr[q][z] = array[q][z] 
                }
            }
            
            copyArr[one.x][one.y] = 1
            copyArr[two.x][two.y] = 1
            copyArr[three.x][three.y] = 1
            
            for q in 0..<N {
                for z in 0..<M {
                    if copyArr[q][z] == 2 {
                        DFS(x: q, y: z)
                    }
                }
            }
            
            var count = 0
            
            for q in 0..<N {
                for z in 0..<M {
                    if copyArr[q][z] == 0 {
                        count += 1
                    }
                }
            }
            if max < count {
                max = count
            }
        }
    }
}

print(max)
