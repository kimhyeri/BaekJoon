//
//  EuclideanDistance.swift
//  Test
//
//  Created by hyeri kim on 26/11/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

func euclideanDistance(A: [String: Float], B: [String: Float]) -> Float {
    let matching = Set(Array(A.keys)).intersection(Set(Array(B.keys)))
    
    let distance = matching.map { (filtered) -> Float in
        guard let aRating = A[filtered], let bRating = B[filtered] else {
            fatalError("invalid")
        }
        
        return pow(aRating - bRating, 2)
        
    }.reduce(0) { (prev, curr) -> Float in 
        return prev + curr
    }.squareRoot() 
    
    return distance
}
