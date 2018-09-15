//
//  kakao1.swift
//  Algo
//
//  Created by hyerikim on 2018. 9. 15..
//  Copyright © 2018년 hyerikim. All rights reserved.
//

import Foundation

func solution(_ record:[String]) -> [String] {
    var dict = [String:String]()
    var ret = [String]()
    var a = [String]()
    
    for i in record.reversed() {
        a.append(i)
    }
    
    for i in 0..<a.count {
        var getA = a[i].components(separatedBy: " ")
        
        if getA[0] == "Enter" {
            if !dict.keys.contains(getA[1]) {
                dict.updateValue(getA[2], forKey: getA[1])
                ret.append("\(dict[getA[1]]!)님이 들어왔습니다.")
            }
            else {
                ret.append("\(dict[getA[1]]!)님이 들어왔습니다.")
            }
        }else if getA[0] == "Change" {
            if !dict.keys.contains(getA[1]) {
                dict.updateValue(getA[2], forKey: getA[1])
            }
        }else {
            ret.append("\(dict[getA[1]]!)님이 나갔습니다.")
        }
    }
    return ret.reversed()
}
