//
//  剑指Offer53-I.在排序数组中查找数字 I .swift
//  查找
//
//  Created by Tian on 2020/12/2.
//
//统计一个数字在排序数组中出现的次数。
//输入: nums = [5,7,7,8,8,10], target = 8 输出: 2
//输入: nums = [5,7,7,8,8,10], target = 6 输出: 0
//限制：0 <= 数组长度 <= 50000
//解题思路：遍历一遍当然能实现，但排序数组中的搜索问题，首先想到二分查找实现啦。
//排序数组 nums 中的所有数字 target 形成一个窗口，记窗口的 左 / 右边界 索引分别为left 和 right ，分别对应窗口左边 / 右边的首个元素。
//本题要求统计数字 target 的出现次数，可转化为：使用二分法分别找到 左边界 left 和 右边界 right ，易得数字 target 的数量为 right−left−1 。
//

import Foundation

/// 执行用时：60 ms, 在所有 Swift 提交中击败了69.83%的用户
/// 内存消耗：14.7 MB, 在所有 Swift 提交中击败了29.31%的用户
func search(_ nums: [Int], _ target: Int) -> Int {
    return searchInner(nums, target) - searchInner(nums, target - 1)
}

private func searchInner(_ nums: [Int], _ target: Int) -> Int {
    var left = 0, right = nums.count - 1
    while left <= right {
        let mid = (left + right) >> 1
        if nums[mid] <= target {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    return left
}
