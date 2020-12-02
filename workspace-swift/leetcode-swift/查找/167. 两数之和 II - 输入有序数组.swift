//
//  167. 两数之和 II - 输入有序数组.swift
//  查找
//
//  Created by Tian on 2020/12/2.
//
//给定一个已按照升序排列 的有序数组，找到两个数使得它们相加之和等于目标数。
//
//函数应该返回这两个下标值 index1 和 index2，其中 index1 必须小于 index2。
//
//说明:
//
//返回的下标值（index1 和 index2）不是从零开始的。
//你可以假设每个输入只对应唯一的答案，而且你不可以重复使用相同的元素。
//示例:
//
//输入: numbers = [2, 7, 11, 15], target = 9
//输出: [1,2]
//解释: 2 与 7 之和等于目标数 9 。因此 index1 = 1, index2 = 2 。
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/two-sum-ii-input-array-is-sorted
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

import Foundation

//执行用时：92 ms, 在所有 Swift 提交中击败了10.68%的用户
//内存消耗：14 MB, 在所有 Swift 提交中击败了 34.31% 的用户
func twoSum1(_ numbers: [Int], _ target: Int) -> [Int] {
    
    for (i, v) in numbers.enumerated() {
        let tar = target - v
        
        var left = i + 1, right = numbers.count, mid = 0
        while left < right {
            mid = (left + right) >> 1
            if numbers[mid] == tar {
                return [i+1, mid+1]
            }
            if tar > numbers[mid] {
                left = mid + 1
            } else {
                right = mid
            }
        }
    }
    return [-1,-1]
}

//执行用时：36 ms, 在所有 Swift 提交中击败了 86.41% 的用户
//内存消耗：13.8 MB , 在所有 Swift 提交中击败了 68.63% 的用户
func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
    
    var low = 0, high = numbers.count - 1
    while low < high {
        let sum = numbers[low] + numbers[high]
        if sum == target {
            return [low+1, high+1]
        } else if sum < target {
            low += 1
        } else {
            high -= 1
        }
    }
    return [-1,-1]
}
