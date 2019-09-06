//
//  Array2D.swift
//  Testing
//
//  Created by hyeri kim on 06/09/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

struct Array2D<T> {
    let columns: Int
    let rows: Int
    var array: [T]
    
    init(colums: Int, rows: Int, initialValue: T) {
        self.columns = colums
        self.rows = rows
        array = .init(repeating: initialValue, count: rows*colums)
    }
    
    subscript(column: Int, row: Int) -> T {
        get {
            return array[row * columns + column]
        }
        set {
            array[row * columns + column] = newValue
        }
    }
}

var arrayarray = Array2D(colums: 9, rows: 7, initialValue: 0)

