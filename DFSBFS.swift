//
//  DFSBFS.swift
//  algorithm
//
//  Created by hyeri kim on 01/05/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

/*
 4 5 1
 1 2
 1 3
 1 4
 2 4
 3 4
 */

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

let read = readLine()!.split(separator: " ")

let N = Int(String(read[0]))! //정점의 개수
let M = Int(String(read[1]))! //간선의 개수
let V = Int(String(read[2]))! //탐색 시작

var array = Array(repeating: Array(repeating: 0, count: N), count: N)
var visited = Array(repeating: false, count: N)
var answer = ""

func createGraph() {
    for _ in 0..<M {
        let line = readLine()!.split(separator: " ")
        let x = Int(String(line[0]))!
        let y = Int(String(line[1]))!
        array[x-1][y-1] = 1
        array[y-1][x-1] = 1
    }
}

func DFS(start: Int) {
    visited[start] = true
    answer.append("\(start + 1) ")
    
    for i in 0..<N {
        if array[start][i] == 1 && !visited[i] {
            DFS(start: i)
        }
    }
}

func BFS(start: Int) {
    var queue = Queue<Int>()
    queue.enqueue(element: start) 
    
    while !queue.isEmpty() {
        let index = queue.dequeue()
        visited[index!] = true
        answer.append("\(index! + 1) ")
        for i in 0..<N {
            if array[index!][i] == 1 && !visited[i] {
                queue.enqueue(element: i)
                visited[i] = true
            }
        }
    }
}

func getAnswer() {
    DFS(start: V-1)
    print(answer)
    
    visited = Array(repeating: false, count: N)
    answer = ""
    
    BFS(start: V-1)
    print(answer)
}

createGraph()
getAnswer()
