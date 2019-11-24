//
//  higher-order function.swift
//  Test
//
//  Created by hyeri kim on 24/11/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

let data = [["id":"1", "sex": "female"],
            ["id":"2", "sex": "female"],
            ["id":"4", "sex": "male"],
            ["id":"3", "sex": "female"],
            ["id":"5", "sex": "male"]
]

let ids = ["1","5","2"]

// ids를 포함하지 않는 data를 출력

print(data.filter {$0.contains { (key: String, value: String) -> Bool in
    key == "id" && !ids.contains(value)
}})

// ids를 포함하는 data를 출력

print(data.filter {$0.contains { (key: String, value: String) -> Bool in
    ids.contains(value)
}})
