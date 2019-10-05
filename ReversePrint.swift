//
//  ReversePrint.swift
//  Testing
//
//  Created by hyeri kim on 06/10/2019.
//  Copyright © 2019 hyeri kim. All rights reserved.
//

import Foundation

func reversePrint(num: Int) {
    print(num)
    if num == 1 { return }
    reversePrint(num: num - 1)
}

reversePrint(num: 4)
