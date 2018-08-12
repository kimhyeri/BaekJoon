//
//  Num1.swift
//  LineTest
//
//  Created by hyerikim on 2018. 8. 12..
//  Copyright © 2018년 hyerikim. All rights reserved.
//

import Foundation

//TEST Number1

 var a = Int(readLine()!)!
 var count = 0
 
 for _ in 0 ..< a { //갯수만큼 문자열 입력하기
 let getArray = Array(readLine()!)
 var compare : Character = getArray[0] //비교할 문자열 저장
 var array = ""
 
 for i in 0 ... getArray.count{
 if i == getArray.count {
 array.append("\(count)\(compare)")
 count = 0
 break
 }
 if (compare != getArray[i]){ //저장한 문자랑 새로 나온 문자랑 다를때
 array.append("\(count)\(compare)")
 compare = getArray[i] //다르면 바꿔준다
 count = 1 //count를 1로 지정
 }else{ //같을 때
 count = count + 1
 }
 }
 print(array)
 }
