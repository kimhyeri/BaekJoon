//
//  ExistFind.swift
//  Testing
//
//  Created by hyeri kim on 16/09/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

let findStr = "hehlaskfjewoplakgnlnxcj"

var dict = [String: Int]()

for i in findStr {
    if let value = dict["\(i)"] {
        print("already exist")
        dict.updateValue(value + 1, forKey: "\(i)")
    } else {
        dict.updateValue(1, forKey: "\(i)")
    }
}

print(dict)
