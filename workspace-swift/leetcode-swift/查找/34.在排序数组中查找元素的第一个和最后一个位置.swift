//
//  34.在排序数组中查找元素的第一个和最后一个位置.swift
//  查找
//
//  Created by Tian on 2020/12/1.
//

import Foundation


func searchRange34(_ nums: [Int], _ target: Int) -> [Int] {
    let left = binarySearch(nums, target, lower: true)
    let right = binarySearch(nums, target, lower: false) - 1
    if left <= right && right < nums.count && nums[left] == target && nums[right] == target {
        return [left, right]
    }
    return [-1, -1]
}

func binarySearch(_ nums: [Int], _ target: Int, lower: Bool) -> Int {
    var left = 0, right = nums.count - 1, res = nums.count
    while left <= right {
        let mid = (left + right) >> 1
        if nums[mid] > target || (lower && nums[mid] >= target) {
            right = mid - 1
            res = mid
        } else {
            left = mid + 1
        }
    }
    return res
}
