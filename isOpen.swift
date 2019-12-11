//
//  isOpen.swift
//  Test
//
//  Created by hyeri kim on 12/12/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

func isOpen(startH: Int, startM: Int, endH: Int, endM: Int, currentH: Int, currentM: Int) -> Bool {
    if currentH < startH || currentH > endH { // 현재 시간이 시작 시간보다 작을 때 , 현재 시간이 끝나는 시간보다 클 때
        return false
    } else if currentH == startH, currentM < startM { // 현재 시간이 시작 시간과 같고, 현재 분이 시작 분 보다 작을 때
        return false
    } else if currentH == endH, currentM > endM { // 현재 시간이 끝나는 시간과 같고, 현재 분이 끝나는 분 보다 클 때
        return false
    }
    return true
}
