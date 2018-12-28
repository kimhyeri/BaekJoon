//
//  2178.swift
//  MyPrac
//
//  Created by hyerikim on 28/12/2018.
//  Copyright © 2018 hyerikim. All rights reserved.
//

import Foundation

public struct Queue<T> {
    private var queue = [T]()
    
    public mutating func dequeue() -> T? {
        return queue.removeFirst()
    }
    
    public func peek() -> T? {
        return queue.first
    }
    
    public mutating func enqueue(element: T) {
        queue.append(element)
    }
    
    public var count: Int {
        return queue.count
    }
    
    public func isEmpty() -> Bool {
        return queue.isEmpty
    }
}

class Point {
    var x: Int
    var y: Int
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}

var dx = [0,0,-1,1]
var dy = [1,-1,0,0]
var read = readLine()!.split(separator: " ").map({Int($0)!})
var a = read[0]
var b = read[1]
var visited = Array(repeating: Array(repeating: false, count: b), count: a)
var array = [[Int]]()

for _ in 0..<a {
    let str = readLine()!
    var row = [Int]()
    
    for index in str {
        row.append(Int(String(index))!)
    }
    array.append(row)
}

func bfs(x: Int, y: Int) {
    var queue = Queue<Point>()
    queue.enqueue(element: Point(x: x, y: y))
    visited[x][y] = true
    while !queue.isEmpty() {
        let my = queue.dequeue()
        for i in 0..<4 {
            let myX = (my?.x)! + dx[i]
            let myY = (my?.y)! + dy[i]
            if myX >= 0 && myY >= 0 && myX < a && myY < b {
                if array[myX][myY] == 1 && visited[myX][myY] == false {
                    queue.enqueue(element: Point(x: myX, y: myY))
                    visited[myX][myY] = true
                    array[myX][myY] = array[(my?.x)!][(my?.y)!] + 1
                }
            }
        }
    }
    print(array[a-1][b-1])
}

bfs(x:0 , y:0)
