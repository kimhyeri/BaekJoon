//
//  Divide.swift
//  
//
//  Created by hyeri kim on 15/12/2019.
//

import Foundation

func solution(n: Int) -> Int {
    var answer = 0 
    let set = Set(String(describing: n).compactMap { Int(String($0)) })
    for i in set {
        if n % i == 0 {
            answer += 1
        }
    }
    return answer 
}

print(solution(n: 2322))
print(solution(n: 1234))
