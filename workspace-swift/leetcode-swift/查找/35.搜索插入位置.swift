//
//  35.搜索插入位置.swift
//  查找
//
//  Created by Tian on 2020/12/1.
//

import Foundation

/// 执行用时：36 ms, 在所有 Swift 提交中击败了86.03%的用户
/// 内存消耗：14.2 MB, 在所有 Swift 提交中击败了18.34%的用户
func searchInsert35(_ nums: [Int], _ target: Int) -> Int {
    if nums.count == 0 {
        return -1
    }
    var left = 0, right = nums.count, mid = 0
    while left < right {
        mid = (left + right) >> 1
        if nums[mid] == target {
            return mid
        }
        var tmp = 0
        if target > nums[mid] {
            left = mid + 1
            tmp = 1
        } else if target < nums[mid] {
            right = mid
        }
        if left >= right {
            return tmp + mid
        }
    }
    return -1
}
