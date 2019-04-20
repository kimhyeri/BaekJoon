//
//  Test4.swift
//  codingTest
//
//  Created by hyeri kim on 20/04/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

func solution(_ K: Int,_ user_scores: [String]) -> Int {
    var count = 0
    var dict = [String:Int]()
    
    for i in user_scores {
        let split = i.components(separatedBy: " ")  
        
        if let value = dict[split[0]] { // 이름이 이미 들어있는 경우 
            if value < Int(split[1])! { // 새로 넣는 점수가 더 높을 때
                dict.updateValue(Int(split[1])!, forKey: split[0]) //업데이트
                let a = dict.filter{$0.value < Int(split[1])!} 
                if !a.isEmpty {
                    count += 1
                }
            } 
        } else { // 새롭게 추가 함
            if dict.count < K {
                dict.updateValue(Int(split[1])!, forKey: split[0])
                count += 1
            } else {
                let a = dict.filter{$0.value < Int(split[1])!} 
                let aa = a.keys.map({$0})
                for i in aa {
                    dict.removeValue(forKey: i)
                    dict.updateValue(Int(split[1])!, forKey: split[0])
                    count += 1
                }
            }
        }
    }
    return count
}

print(solution(3, ["alex111 100", "cheries2 200", "coco 150", "luna 100", "alex111 120", "coco 300", "cheries2 110"]))
print(solution(3, ["alex111 100", "cheries2 200", "alex111 200", "cheries2 150", "coco 50", "coco 200"]))
print(solution(2, ["cheries2 200", "alex111 100", "coco 150", "puyo 120"]))
