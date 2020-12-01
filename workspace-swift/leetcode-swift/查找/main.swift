//
//  main.swift
//  查找
//
//  Created by Tian on 2020/11/15.
//

import Foundation

print("Hello, World!")

let arr = [2, 5, 10, 13, 29, 34, 42, 65, 71, 89, 102, 120]



print(binarySearch(arr: arr, left: 0, right: arr.count, target: 102))
print(binarySearch2(arr: arr, len: arr.count, target: 102))

let nums = [-1, 0, 3, 5, 9, 12]
print(search704(nums, 9))

let nums2 = [-1,0,3,5,9,12]
print(search704(nums2, 2))

let nums3 = [5]
print(search704(nums3, 5))

print("-------------")
let nums4 = [1, 3, 5, 6]
print(searchInsert35(nums4, 5))
print(searchInsert35(nums4, 2))
print(searchInsert35(nums4, 7))
print(searchInsert35(nums4, 0))

print("-------------")
let nums5 = [5, 7, 7, 8, 8, 10]
print(searchRange34(nums5, 8))
print(searchRange34(nums5, 6))
print(searchRange34(nums5, 0))
print(searchRange34(nums5, 5))
