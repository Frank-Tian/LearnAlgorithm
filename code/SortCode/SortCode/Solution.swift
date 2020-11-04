//
//  Solution.swift
//  SortCode
//
//  Created by Tian on 2020/10/2.
//

import Cocoa

class Solution: NSObject {
    
    func printArr(_ arr:[Int]) {
        print(arr)
    }
    
    func buboSort(_ arr:inout [Int]) -> [Int] {
        for i in 0..<arr.count {
            for j in 0..<arr.count - i - 1 {
                if arr[j] > arr[j+1] {
                    let t = arr[j]
                    arr[j] = arr[j+1]
                    arr[j+1] = t
                }
            }
        }
        return arr
    }
    
    func buboSort2(_ arr:inout [Int]) -> Void {
        var flag = true
        var j = arr.count, i = j - 1
        while flag && i > 0 {
            flag = false
            for j in 0..<i {
                if arr[j] > arr[j+1] {
                    let t = arr[j]
                    arr[j] = arr[j+1]
                    arr[j+1] = t
                    flag = true
                }
            }
            i-=1
        }
    }
    
    func partition(_ arr:inout [Int], low:Int, high:Int) -> Int {
        
        let root = arr[high]
        var index = low
        for i in low...high {
            if arr[i] < root {
                if i != index {
                    arr.swapAt(i, index)
                }
                index = index+1
            }
        }
        
        if high != index {
            arr.swapAt(high, index)
        }
        return index
    }
    
    func quickSort(_ arr:inout [Int], low:Int, high:Int) -> Void {
        if low > high {
            return
        }
        let sortIndex = partition(&arr, low: low, high: high)
        quickSort(&arr, low: low, high: sortIndex - 1)
        quickSort(&arr, low: sortIndex + 1, high: high)
    }
    
    func insertSort(_ arr:inout [Int], n: Int) -> Void {
        var j = 0, t = 0
        print("arr:\(arr)")

        for i in 1...n {
            t = arr[i]
            j = i - 1
            while j >= 0 && t < arr[j] {
                arr.swapAt(j+1, j)
                j -= 1
            }
            arr[j+1] = t
        }
    }
}
