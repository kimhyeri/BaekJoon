//
//  Palindrome.swift
//  Testing
//
//  Created by hyeri kim on 04/01/2020.
//  Copyright © 2020 hyeri kim. All rights reserved.
//

import Foundation

extension String {

  var length: Int {
    return count
  }

  subscript (i: Int) -> String {
    return self[i ..< i + 1]
  }

  func substring(fromIndex: Int) -> String {
    return self[min(fromIndex, length) ..< length]
  }

  func substring(toIndex: Int) -> String {
    return self[0 ..< max(0, toIndex)]
  }

  subscript (r: Range<Int>) -> String {
    let range = Range(uncheckedBounds: (lower: max(0, min(length, r.lowerBound)),
                                        upper: min(length, max(0, r.upperBound))))
    let start = index(startIndex, offsetBy: range.lowerBound)
    let end = index(start, offsetBy: range.upperBound - range.lowerBound)
    return String(self[start ..< end])
  }

}

func isPalindrome(input: String) -> Bool {
    for i in 0..<input.count / 2 {
        if input[i] != input[input.count-1-i] {
            return false
        } 
    }
    return true
}

print(isPalindrome(input: "aba"))
print(isPalindrome(input: "abc"))
print(isPalindrome(input: "ababa"))
print(isPalindrome(input: "abba"))
print(isPalindrome(input: "abbabba"))

