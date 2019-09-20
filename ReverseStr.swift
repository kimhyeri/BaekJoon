//
//  ReverseStr.swift
//  Testing
//
//  Created by hyeri kim on 20/09/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

// swift reverse string
// num 1 - using for loop
// num 2 - using reversed function 
// num 3 - using stack

// num 1 

func reverseStringUsingForLoop(str: String) -> String {
    var array = str.map { $0 }
    let count = str.count
    
    for i in 0..<count/2 {
        array.swapAt(i, count - i - 1)
    }
    
    return String(array)
}

print(reverseStringUsingForLoop(str: "apple"))

// num 2 

func reverseStringUsingReversedFunc(str: String) -> String {
    return String(str.reversed())
}

print(reverseStringUsingReversedFunc(str: "apple"))

// num 3 

struct Stack {
    var stack = [String]()
    
    mutating func push(element: String) {
        stack.append(element)
    }
    
    mutating func pop() -> String? {
        return stack.popLast()
    }
    
    func isEmpty() -> Bool {
        return stack.isEmpty
    }
}

func reverseStringUsingStack(str: String) -> String {
    var stack = Stack()
    var answer = ""
    
    for i in str {
        stack.push(element: "\(i)")
    }
    
    while !stack.isEmpty() {
        guard let data = stack.pop() else { return "" }
        answer.append(data)
    }
    
    return answer
}

print(reverseStringUsingStack(str: "apple"))
