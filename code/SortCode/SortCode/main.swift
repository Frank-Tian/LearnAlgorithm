//
//  main.swift
//  SortCode
//
//  Created by Tian on 2020/10/2.
//

import Foundation

print("Hello, World!")

let s = Solution()

var arr = [7,2,1,8,4,5,6,9,0,3]
s.printArr(s.buboSort(&arr))

var arr1 = [7,2,1,8,4,5,6,9,0,3]
s.quickSort(&arr1, low: 0, high: arr1.count - 1)
s.printArr(arr1)


