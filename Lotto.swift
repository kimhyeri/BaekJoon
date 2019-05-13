//
//  Lotto.swift
//  AlgorithmProject
//
//  Created by hyeri kim on 13/05/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

while true {
    var cnt = 0
    var answer = ""
    var array = readLine()!.components(separatedBy: " ").map({Int($0)!})
    let k = array.removeFirst()
    if k == 0 { break }
    else {
        func lotto(index: Int, str: String) {
            if cnt == 6 {
                answer.append("\(str) \n")                
            } else {
                for i in index+1..<k {
                    cnt += 1
                    lotto(index: i, str: "\(str) \(array[i])")
                }
            }
            cnt -= 1
        }
        
        for i in 0..<k-5 {
            cnt = 1
            lotto(index: i, str: String(array[i]))
        }
        
        print(answer) 
    }
}
