//
//  PrinterQueue.swift
//  algorithm
//
//  Created by hyeri kim on 17/06/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

struct Queue {
    var queue = [Int]()
    lazy var check = Array(repeating: false, count: queue.count)
    
    func isEmpty() -> Bool{
        return queue.isEmpty
    }
    
    mutating func enqueue(element: Int) {
        queue.append(element)
    }
    
    mutating func dequeue() -> Int? {
        var count = 0
        if queue.count == 1 { return 1 }
        
        while !queue.isEmpty {
            var change = false
            
            if let first = queue.first,
                let value = check.first {
                for i in 1..<queue.count {
                    if queue[i] > first {
                        change = true
                        self.check.removeFirst()
                        self.check.append(value)
                        self.queue.removeFirst()
                        self.queue.append(first)
                        break
                    }
                }
                if !change {
                    count += 1 
                    if let value = check.first {
                        if value {
                            return count
                        }
                    }
                    self.check.removeFirst()
                    self.queue.removeFirst()
                }
            }  
        }
        return count
    }
}

var count = Int(readLine()!)!
while count > 0 {
    let priority = readLine()!.split(separator: " ")
    let N = Int(priority[0])! // queue 길이
    let M = Int(priority[1])! // queue 인덱스 위치
    
    var queue = Queue()
    queue.queue = readLine()!.split(separator: " ").map({Int($0)!})
    queue.check[M] = true
    
    print(queue.dequeue()!)
    
    count -= 1
}
