//
//  main.swift
//  240.搜索二维矩阵 II
//
//  Created by Tian on 2020/9/23.
//

import Foundation

//编写一个高效的算法来搜索 m x n 矩阵 matrix 中的一个目标值 target。该矩阵具有以下特性：
//
//每行的元素从左到右升序排列。
//每列的元素从上到下升序排列。
//示例:
//
//现有矩阵 matrix 如下：
//
//[
//  [1,   4,  7, 11, 15],
//  [2,   5,  8, 12, 19],
//  [3,   6,  9, 16, 22],
//  [10, 13, 14, 17, 24],
//  [18, 21, 23, 26, 30]
//]
//给定 target = 5，返回 true。
//
//给定 target = 20，返回 false
//链接：https://leetcode-cn.com/problems/search-a-2d-matrix-ii

/// 这题有好几种解法，如二分法等，因为其有规律，因此直接从右上角（左下角）也是可以的。
/// 取最右边的元素
/// 小于舍弃右侧列
/// 大于舍弃上侧行
class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        let m = matrix.count - 1
        if (m < 0) {
            return false
        }
        let n = matrix[0].count - 1
        
        /// 取最右边的元素
        /// 小于舍弃右侧列
        /// 大于舍弃上侧行
        var i = 0, j = n
        while j >= 0 && i <= m {
            let right = matrix[i][j]
            if right < target {
                i += 1
            } else if right > target {
                j -= 1
            } else {
                return true
            }
        }
    
        return false
    }
}
