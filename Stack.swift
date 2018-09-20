//
//  Stack.swift
//  Algo
//
//  Created by hyerikim on 2018. 9. 21..
//  Copyright © 2018년 hyerikim. All rights reserved.
//

import Foundation

var array = Array<Int>()

func push(x:Int) {
    array.append(x)
}

func pop () {
    if array.count != 0 {
        if let pop = array.popLast() {
            print(pop)
        }
    }else{
        print(-1)
    }
}

func size () {
    print(array.count)
}

func empty () {
    if array.isEmpty {
        print(1)
    }else {
        print(0)
    }
}

func top () {
    if array.isEmpty {
        print(0)
    }else {
        if let last = array.last {
            print(last)
        }
    }
}

let a = Int(readLine()!)!
for _ in 0..<a {
    let b = readLine()!
    
    switch b {
    case "top" :
        top()
    case "size" :
        size()
    case "pop" :
        pop()
    case "empty" :
        empty()
    default:
        let getA = b.components(separatedBy: " ")
        push(x: Int(getA[1])!)
    }
}
