//
//  SelectionSort.swift
//  SwiftPrac
//
//  Created by hyerikim on 14/01/2019.
//  Copyright © 2019 hyerikim. All rights reserved.
//

import Foundation

func selectionSort(array: [Int]) -> [Int] {
    
    var newArray = array
    
    for x in 0 ..< newArray.count - 1 {
        var temp = x
        for y in x + 1 ..< newArray.count {
            if newArray[y] < newArray[temp] {
                temp = y
            }
        }
        
        if x != temp {
            newArray.swapAt(x, temp)
        }
    }
    return newArray
}

let list = [10,-1,3,9,2,27,8,5,1,3,0,26]
print(selectionSort(array: list))

