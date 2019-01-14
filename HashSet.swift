//
//  HashSet.swift
//  SwiftPrac
//
//  Created by hyerikim on 14/01/2019.
//  Copyright © 2019 hyerikim. All rights reserved.
//

import Foundation

public struct HashSet<T: Hashable> {
    
    private var dictionary = Dictionary<T, Bool>()
    
    public init() {}
    
    public mutating func insert(_ element: T) {
        dictionary[element] = true
    }
    
    public mutating func remove(_ element: T) {
        dictionary[element] = nil
    }
    
    public func contains(_ element: T) -> Bool {
        return dictionary[element] != nil
    }
    
    public func allElements() -> [T] {
        return Array(dictionary.keys)
    }
    
    public var cound: Int {
        return dictionary.count
    }
    
    public var isEmpty: Bool {
        return dictionary.isEmpty
    }
    
}

