//
//  Test3.swift
//  codingTest
//
//  Created by hyeri kim on 20/04/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

//3
func solution(_ N:Int, _ coffee_times:[Int]) -> [Int] {
    var result = [Int]()
    var dict = [Int:Int]()
    var count = 0
    
    for i in coffee_times {
        count += 1
        dict.updateValue(i, forKey: count)
    }
    
    if N != 1 {
        while true {
            if dict.isEmpty == true || dict.count <= N {
                break
            }
            for i in 1...N {
                let value = dict[i]
                dict.updateValue(value!-1, forKey: i)
                if dict[i] == 0 {
                    result.append(i)
                    dict.removeValue(forKey: i)
                }            
            }
        }
        var array = dict.sorted(by: <) 
        var temp = [Int:Int]()
        for (i,j) in array {
            temp.updateValue(i, forKey: j)
        }
        array = temp.sorted(by: <)
        for i in array{
            result.append(i.value)
        }
        return result
    } 
    let array = dict.sorted(by: <) 
    for i in array {
        result.append(i.key)
    }
    return result
}
