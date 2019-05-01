//
//  main.swift
//  algorithm
//
//  Created by hyeri kim on 30/04/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

class Point {
    var x: Int
    var y: Int
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}

enum Color {
    case R 
    case G 
    case B 
    
    var stringValue: Character {
        switch self {
        case .R:
            return "R"
        case .G:
            return "G"
        case .B:
            return "B"
        }
    }
}

//character to enum 
func matching(_ color: Character) -> Color {
    switch color {
    case Color.R.stringValue:
        return .R
    case Color.G.stringValue:
        return .G
    default:
        return .B
    }
}

var dx = [0,0,-1,1]
var dy = [1,-1,0,0]

let N = Int(readLine()!)!
var array = [[Color]]()
var visited = [[Bool]]()

// appending character array
for _ in 0..<N {
    let colorLine = readLine()!
    var row = [Color]()
    
    for color in colorLine {
        row.append(matching(color))
    }
    array.append(row)
}

func DFS(x: Int, y: Int) {
    visited[x][y] = true
    let point = array[x][y]

    for i in 0..<4 {
        let myX = x + dx[i]
        let myY = y + dy[i]
        
        if myX >= 0 && myY >= 0 && myX < N && myY < N {
            if array[myX][myY] == point && visited[myX][myY] == false {
                DFS(x: myX, y: myY)
            } 
        }
    }
}

func changeGtoR() {
    for i in 0..<N {
        for j in 0..<N {
            if array[i][j] == Color.G {
                array[i][j] = Color.R
            }
        }
    }
}

func findAnswer() -> Int {
    var answer = 0 
    visited = Array(repeating: Array(repeating: false, count: N), count: N)
    for i in 0..<N {
        for j in 0..<N {
            if !visited[i][j] {
                DFS(x: i, y: j)
                answer += 1
            }
        }
    }
    return answer
}

print(findAnswer())
changeGtoR()
print(findAnswer())
