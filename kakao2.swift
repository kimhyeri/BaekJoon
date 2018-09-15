//
//  kakao2.swift
//  Algo
//
//  Created by hyerikim on 2018. 9. 15..
//  Copyright © 2018년 hyerikim. All rights reserved.
//

import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    
    let count = stages.count
    var cnt = [Int](repeating: 0, count: N)
    var retArr = [Double]()
    var retInd = [Int]()
    var person = [Int](repeating: 0, count: N)
    
    for i in 0..<count {
        if stages[i] <= N {
            cnt[stages[i] - 1] = cnt[stages[i] - 1] + 1
        }
    }
    
    for i in 0..<cnt.count {
        if i == 0 {
            person[i] = count
            
        }else {
            person[i] = person[i-1] - cnt[ i - 1]
        }
    }
    
    for i in 0..<cnt.count {
        if cnt[i] != 0 {
            retArr.append(Double(cnt[i])/Double(person[i]))
        }else {
            retArr.append(0)
        }
    }
    let a = retArr.sorted(by: { $0 > $1 })
    
    for i in 0..<a.count {
        for j in 0..<retArr.count {
            if a[i] == retArr[j] {
                if retInd.contains(j + 1) ==  false{
                    retInd.append(j + 1)
                }
            }
        }
    }
    return retInd
}

