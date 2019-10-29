//
//  List.swift
//  Test
//
//  Created by hyeri kim on 29/10/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

class List<T> {
    var value: T
    var nextItem: List<T>?
    
    convenience init?(_ values: T...) {
        self.init(Array(values))
    }

    init?(_ values: [T]) {
        guard let first = values.first else {
            return nil
        }
        value = first
        nextItem = List(Array(values.suffix(from: 1)))
    }
}

List(1, 1, 2, 3, 5, 8)
