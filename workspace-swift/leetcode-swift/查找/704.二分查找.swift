//
//  704.二分查找.swift
//  查找
//
//  Created by Tian on 2020/12/1.
//

import Foundation

/// 执行用时：372 ms, 在所有 Swift 提交中击败了45.99%的用户
/// 内存消耗：13.8 MB, 在所有 Swift 提交中击败了21.90%的用户
func search704(_ nums: [Int], _ target: Int) -> Int {
    if nums.count == 0 {
        return -1
    }
    var left = 0, right = nums.count, mid = 0
    while left < right {
        mid = (left + right) >> 1
        if nums[mid] == target {
            return mid
        }
        if target > nums[mid] {
            left = mid + 1
        } else {
            right = mid
        }
    }
    return -1
}
