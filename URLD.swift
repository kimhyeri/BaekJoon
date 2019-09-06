//
//  URLD.swift
//  Testing
//
//  Created by hyeri kim on 06/09/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

struct Point {
    let x: Int
    let y: Int 
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}

enum Direction: String {
    case U = "U"
    case R = "R"
    case L = "L"
    case D = "D"
}

extension Direction {
    var location: Point {
        switch self {
        case .D:
            return Point(x: 0, y: -1)
        case .U:
            return Point(x: 0, y: 1)
        case .R:
            return Point(x: 1, y: 0)
        case .L:
            return Point(x: -1, y: 0)
        }
    }
}

var arr = [[Bool]]()

func solution(_ moves:[String]) -> Int {
    let array = moves
    var beforeX = 0
    var beforeY = 0
    for i in array {
        if let direction = Direction(rawValue: i) {
            beforeX = beforeX + direction.location.x
            beforeY = beforeY + direction.location.y 
            print("x좌표 = \(beforeX) y좌표 = \(beforeY) ")
        }    
    }
    
    for i in arr {
        print(i)
    }
    return 0 // 1X1 크기 정사각형 개수를 리턴
}

let answer = ["U","R","D","L","U","R","D","L"]
print(solution(answer))

//let answer = [["U","R","D","L","U","R","D","L"], ["U","U","R","D","L","L","L","U","R","D","D","D","L","U","R","R","R","D","L","U"], ["U","L","D","R","R","D","D","L","U","U"]]

//answer.forEach({
//    print(solution($0))
//})
