//
//  TimeRange.swift
//  Test
//
//  Created by hyeri kim on 09/12/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

func getTimeInterval(hour: Int, minute: Int) -> Double? {
    let calendar = Calendar(identifier: .gregorian)
    
    var dateComponents = calendar.dateComponents([.year, .month, .day], from: Date())
    dateComponents.hour = hour
    dateComponents.minute = minute
    
    guard let timeInterval = calendar.date(from: dateComponents)?.timeIntervalSince1970 else {
        return nil
    }
    return timeInterval
}

func durationCheck(startH: Int, startM: Int, endH: Int, endM: Int, currentH: Int, currentM: Int) -> Bool {
    guard let start = getTimeInterval(hour: startH, minute: startM), 
        let end = getTimeInterval(hour: endH, minute: endM), 
        let now = getTimeInterval(hour: currentH, minute: currentM) else {
            return false
    }
    
    return (start...end).contains(now)
}
