//
//  main.swift
//  Binary Search
//
//  Created by Tian on 2020/11/2.
//

import Foundation

print("Hello, World!")

let arr = [2, 5, 10, 13, 29, 34, 42, 65, 71, 89, 102, 120]

func binarySearch(arr: [Int], left: Int, right: Int, target: Int) -> Int {
    if left > right {
        return -1
    }
    let mid = (left + right) / 2
    if target == arr[mid] {
        return mid
    }
    if target < arr[mid] {
        return binarySearch(arr: arr, left: left, right: mid - 1, target: target)
    }
    return binarySearch(arr: arr, left: mid + 1, right: right, target: target)
}

func binarySearch2(arr: [Int], len: Int, target: Int) -> Int {
    var left = 1, right = len, mid = 0
    while left <= right {
        mid = (left + right) / 2
        if arr[mid] == target {
            return mid
        }
        if target > arr[mid] {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    return -1
}

print(binarySearch(arr: arr, left: 0, right: arr.count, target: 102))
print(binarySearch2(arr: arr, len: arr.count, target: 102))
