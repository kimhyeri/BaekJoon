//
//  Tomatos.swift
//  AlgorithmProject
//
//  Created by hyeri kim on 03/05/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation
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
    var x = 0
    var y = 0 
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}

let x = [1,0,-1,0]
let y = [0,1,0,-1]

let read = readLine()!.components(separatedBy: " ")
let M = Int(String(read[0]))! // 상자의 가로 크기
let N = Int(String(read[1]))! // 상자의 세로 크기

var array = Array(repeating: Array(repeating: 0, count: M), count: N)
var visited = Array(repeating: Array(repeating: false, count: M), count: N)
var queue = Queue<Point>()

func createGraph() {
    
    for i in 0..<N {
        let row = readLine()!.components(separatedBy: " ")
        for j in 0..<M {
            if let number = Int(row[j]) {
                if number == 1 { // 시작 점 저장
                    queue.enqueue(element: Point(x: i, y: j))
                }
                array[i][j] = number
            }
        }
    }
}

func findAnswer() -> Int {  
    var temp = 0
    
    func BFS() {        
        while !queue.isEmpty() {
            let my = queue.dequeue()!
            visited[my.x][my.y] = true
            
            for i in 0..<4 {
                let myX = my.x + x[i]
                let myY = my.y + y[i]
                
                if myX >= 0 , myY >= 0, myX < N, myY < M {
                    if array[myX][myY] == 0 , visited[myX][myY] == false {
                        queue.enqueue(element: Point(x: myX, y: myY))
                        visited[myX][myY] = true
                        array[myX][myY] = array[my.x][my.y] + 1
                        temp = array[my.x][my.y]
                    }
                }
            }
        }
    } 
    
    BFS()
    
    visited.forEach { (arr) in
        if arr.contains(false) {
            temp = -1
        }
    } 
    
    return temp
}

createGraph()
print(findAnswer())
