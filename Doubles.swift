//
//  Doubles.swift
//  AlgorithmProject
//
//  Created by hyeri kim on 07/05/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

while true {
    var read = readLine()!.components(separatedBy: " ")
    if read.count == 1 {
        break
    } else {
        read.removeLast()
        var count = 0 
        for i in read {
            let cnt = read.filter({ Int($0)! * 2 == Int(i)! })
            if cnt.count > 0 {
                count += 1
            }
        }
        print(count)
    }
}

