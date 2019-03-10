//
//  SplitString.swift
//  functions
//
//  Created by hyeri kim on 11/03/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

let a = readLine()!

var str = ""
var cnt = 0

for i in a {
    if cnt % 10 == 0, cnt != 0 {
        print(str)
        str = ""
    }
    cnt += 1
    str += String(i)
}
print(str)
