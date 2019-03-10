//
//  getDay.swift
//  functions
//
//  Created by hyeri kim on 10/03/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

let monthDayArr = [31,28,31,30,31,30,31,31,30,31,30,31]
let arr = ["SUN","MON", "TUE", "WED", "THU", "FRI", "SAT"]
let a = readLine()!.components(separatedBy: " ")
let month = Int(a[0])!
let day = Int(a[1])!

var sum = 0
if month != 1 {
    for i in 0..<month - 1 {
        sum += monthDayArr[i]
    }
}
sum += day
print(arr[sum % 7])
