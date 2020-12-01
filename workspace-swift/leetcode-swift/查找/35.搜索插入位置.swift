//
//  35.搜索插入位置.swift
//  查找
//
//  Created by Tian on 2020/12/1.
//

import Foundation

/// 执行用时：32 ms, 在所有 Swift 提交中击败了99.13%的用户
/// 内存消耗：14 MB, 在所有 Swift 提交中击败了25.76%的用户
func searchInsert35(_ nums: [Int], _ target: Int) -> Int {
    if nums.count == 0 {
        return -1
    }
    var left = 0, right = nums.count, mid = 0, res = 0
    while left < right {
        mid = (left + right) >> 1
        if nums[mid] == target {
            return mid
        }
        if target > nums[mid] {
            left = mid + 1
            res = mid + 1
        } else if target < nums[mid] {
            right = mid
        }
    }
    return res
}
