//
//  main.swift
//  leetcode-swift
//
//  Created by Tian on 2020/11/12.
//

import Foundation

print("Hello, World!")

/// Constant time（常数时间）O(1)
func checkFirst(names: [String]) {
    if let first = names.first {
        print(first)
    } else {
        print("no names")
    }
}

/// Linear Time（线性时间）O(n)
func printNames1(names: [String]) {
    for name in names {
        print(name)
    }
}

/// Quadratic time（2次方，平方）O(n^2)
func printNames2(names: [String]) {
    for _ in names {
        for name in names {
            print(name)
        }
    }
}

/// Logarithmic time （对数时间）O(logn)
func naiveContains(_ value: Int, in array: [Int]) -> Bool {
    guard !array.isEmpty else { return false }
    let middleIndex = array.count / 2
    if value <= array[middleIndex] {
        for index in 0...middleIndex {
            if array[index] == value {
                return true
            }
        }
    } else {
        for index in middleIndex..<array.count {
            if array[index] == value {
                return true
            }
        }
    }
    return false
}

/// Quasilinear time（拟线性时间）O(nlogn)


