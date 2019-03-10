//
//  Sugar.swift
//  functions
//
//  Created by hyeri kim on 10/03/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

let big = 5
let small = 3

let a = Int(readLine()!)!  
let b = (a % big) % small 

if b != 0 {
    var count = a / big
    if count < 1 {
        if a % small == 0 { 
            print(a/small)
        } else {
            print(-1)
        }
    } else {
        if count == 1, a % small != 0, a - (big * count) < 3 {
            print(-1)
        } else {
            while count > 0 {
                count -= 1
                let d = a - (big * count)
                if d % small == 0 {
                    print(count + (d / small))
                    break
                } 
            }
        }
    }
} else {
    var count = a / big 
    let e = (a % big)
    count += e / small
    print(count) 
}
