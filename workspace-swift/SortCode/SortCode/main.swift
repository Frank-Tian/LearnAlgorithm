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

var arrr = [7,2,1,8,4,5,6,9,0,3]
s.buboSort2(&arrr)
s.printArr(arrr)

var arr1 = [7,2,1,8,4,5,6,9,0,3]
s.quickSort(&arr1, low: 0, high: arr1.count - 1)
s.printArr(arr1)

var arr2 = [7,2,1,8,4,5,6,9,0,3]
s.insertSort(&arr2, n: arr2.count - 1)
s.printArr(arr2)

var arr3 = [7,2,1,8,4,5,6,9,0,3]
s.binarySearchInsertSort(&arr3)
s.printArr(arr3)

var arr4 = [7,2,1,8,4,5,6,9,0,3]
s.selectSort(&arr4)
s.printArr(arr4)
