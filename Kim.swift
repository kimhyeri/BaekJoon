//
//  Kim.swift
//  functions
//
//  Created by hyeri kim on 10/03/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

func solution(_ seoul:[String]) -> String {
    //    return "김서방은 \(seoul.index(of:"Kim")!)에 있다"
    for i in 0 ..< seoul.count {
        if seoul[i] == "Kim" {
            return "김서방은 \(i)에 있다"
        }
    }
    return ""
}

print(solution(["Jane","Kim"]))
