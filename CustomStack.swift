//
//  CustomStack.swift
//  AlgorithmProject
//
//  Created by hyeri kim on 06/05/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//
import Foundation

struct Stack {
    var stack = [Int]()
    
    mutating func pushX(X: Int) {
        stack.append(X)
    }
    
    mutating func pop() -> Int {
        if self.empty() == 1 {
            return -1
        } else {
            return stack.popLast()!
        }
    }
    
    func size() -> Int {
        return stack.count
    }
    
    func empty() -> Int {
        if self.size() == 0 {
            return 1
        } else {
            return 0
        }
    }
    
    func top() -> Int {
        if self.empty() == 1 {
            return -1
        } else {
            return stack.last!
        }
    }
}

var stack = Stack()

enum StackCase {
    case pop
    case size
    case empty
    case top
    
    func matching() -> Int {
        switch self {
        case .pop:
            return stack.pop()
        case .size:
            return stack.size()
        case .empty:
            return stack.empty()
        case .top:
            return stack.top()
        }
    }
}

var N = Int(readLine()!)!

while N > 0 {    
    let read = readLine()!
    let seperate = read.components(separatedBy: " ")
    var myCase: StackCase?
    
    if seperate.count > 1 {
        stack.pushX(X: Int(seperate[1])!)
    } else {
        switch seperate.first {
        case "pop" :
            myCase = .pop
        case "size" :
            myCase = .size
        case "empty" :
            myCase = .empty
        default :
            myCase = .top
        }
    }
    
    if let answer = myCase?.matching() {
        print(answer)
    }
    
    N -= 1
}

