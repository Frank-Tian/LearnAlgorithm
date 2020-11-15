//
//  88-合并两个有序数组.swift
//  数组
//
//  Created by Tian on 2020/11/15.
//

import Foundation

//给你两个有序整数数组 nums1 和 nums2，请你将 nums2 合并到 nums1 中，使 nums1 成为一个有序数组。
//
//说明:
//
//初始化 nums1 和 nums2 的元素数量分别为 m 和 n 。
//你可以假设 nums1 有足够的空间（空间大小大于或等于 m + n）来保存 nums2 中的元素。
//
//示例:
//
//输入:
//nums1 = [1,2,3,0,0,0], m = 3
//nums2 = [2,5,6],       n = 3
//
//输出: [1,2,2,3,5,6]
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/merge-sorted-array

/// 非原地法实现
func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    
    // 创建数组和头指针
    var p = 0, q = 0
    var res:[Int] = []
    
    // 循环比较，然后放入新数组
    while (p < m && q < n) {
        
        let m1 = nums1[p]
        let m2 = nums2[q]
        if (m1 < m2) {
            res.append(m1)
            p += 1
        } else {
            res.append(m2)
            q += 1
        }
    }
    
    // 将剩余元素放入新数组
    while p < m {
        res.append(nums1[p])
        p += 1
    }
    
    while q < n {
        res.append(nums2[q])
        q += 1
    }
    
    // 设置返回值
    nums1 = res
}
