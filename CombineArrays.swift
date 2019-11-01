//
//  CombineArrays.swift
//  Test
//
//  Created by hyeri kim on 01/11/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

// combine two array

let a = [1,5,6,9,12,15]
let b = [2,3,10,11,23]


// worst case O(m+n)

func mergeSortedArraysLinear() -> [Int] {
    
    var c = Array(repeating: 0, count: a.count + b.count)
    
    var i = 0, j = 0, k = 0
    
    while i < a.count , j < b.count {
        if a[i] < b[j] {
            c[k] = a[i]
            i += 1
        } else {
            c[k] = b[j]
            j += 1
        }
        k += 1
    } 

    while i < a.count {
        c[k] = a[i]
        i += 1
        k += 1
    }
    while j < b.count {
        c[k] = b[j]
        j += 1
        k += 1
    }
    
    return c
}

print(mergeSortedArraysLinear())
