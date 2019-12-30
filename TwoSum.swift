//
//  TwoSum.swift
//  Testing
//
//  Created by hyeri kim on 30/12/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

func twoSum1(_ nums: [Int], _ target: Int) -> [Int] {
    for i in 0..<nums.count {
        for j in i..<nums.count {
            if i != j, nums[i] + nums[j] == target {
                return [i,j]
            } 
        }
    }
    return [0] 
}

print(twoSum1([2,7,11,15], 9))

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var hashmap = [Int: Int]()
    
    for i in 0..<nums.count {
        let complement = target - nums[i]
        
        if hashmap.contains(where: { $0.key == complement }), let value = hashmap[complement] {
            return [i, value]
        }
        
        hashmap.updateValue(i, forKey: nums[i])
    }

    return [0]
}
