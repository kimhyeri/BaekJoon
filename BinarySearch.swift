//
//  BinarySearch.swift
//  Sort
//
//  Created by hyeri kim on 15/10/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

func binarySearch(array: [Int], start: Int, end: Int ,answer: Int) {
    guard start <= end, array.count > 1 else { return }
    let middle = (start + end) / 2
    if array[middle] == answer {
        print("\(answer) 찾았다")
        return
    } else if array[middle] > answer {
        return binarySearch(array: array, start: start, end: middle - 1, answer: answer)
    } else {
        return binarySearch(array: array, start: middle + 1, end: end, answer: answer)
    }
}

let array = [1,2,3,4,5,6] 
binarySearch(array: array, start: 0, end: array.count-1, answer: 4)
