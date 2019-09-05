//
//  Programmers1.swift
//  Testing
//
//  Created by hyeri kim on 05/09/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

enum PhoneType: Int {
    case Type1 = 1
    case Type2 = 2
    case Type3 = 3
    case Type4 = -1
}

func validCount(_ phone_number: String) -> Bool {
    if phone_number.count == 11 {
        return true
    } else {
        return false
    }
}

func solution(_ phone_number: String) -> Int {
    var answer: PhoneType = .Type4 
    
    if !phone_number.contains("-"), validCount(phone_number) {
        answer = .Type2
    } else {
        var phoneNumberString = phone_number.replacingOccurrences(of: "-", with: "")
        if phoneNumberString.hasPrefix("+82"){
            phoneNumberString.insert("0", at: phoneNumberString.startIndex)
            answer = .Type3
        }
        if validCount(phoneNumberString) {
            answer = .Type1
        } else {
            return answer.rawValue
        }
    }
    return answer.rawValue
}

let example = ["01012345678","010-1212-333","+82-10-1111-2222","010111111111","010-1212-3333"] 

example.forEach({
    print(solution($0))
})
