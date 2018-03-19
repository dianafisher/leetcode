import Foundation

/*
 
 Given an array of n integers where n > 1, nums, return an array output such that output[i] is equal to the product of all the elements of nums except nums[i].
 
 Solve it without division and in O(n).
 
 For example, given [1,2,3,4], return [24,12,8,6].
 
 2*3*4
 3*4
 4
 
 Solution:
 
 Create two temporary arrays.
 Scan from left to right
 Scan from right to left
 Multiply the two temporary arrays together index by index.
 */

public func productExceptSelf(_ nums: [Int]) -> [Int] {
    
    let n = nums.count

    // initialize the arrays
    var output: [Int] = Array(repeating: 1, count: n)
    var leftToRight: [Int] = Array(repeating: 1, count: n)
    var rightToLeft: [Int] = Array(repeating: 1, count: n)
    
    leftToRight[0] = 1
    rightToLeft[n-1] = 1
    
    // Scan from left to right.
    for index in 0..<n-1 {
        leftToRight[index+1] = nums[index] * leftToRight[index]
    }
    
    // Scan from right to left
    for index in stride(from: n-1, to: 0, by: -1) {
        rightToLeft[index-1] = rightToLeft[index] * nums[index]
    }
    
    // Multiply
    for index in 0..<n {
        output[index] = leftToRight[index] * rightToLeft[index]
    }
    
    return output
}

public func productExceptSelf2(_ nums: [Int]) -> [Int] {
    let n = nums.count
    var output: [Int] = Array(repeating: 1, count: n)
    
    output[n-1] = 1
    
    for i in stride(from: n-2, to: -1, by: -1) {
        output[i] = output[i+1] * nums[i+1]
    }
    
    var left = 1
    for i in 0..<n {
        output[i] = output[i] * left
        left = left * nums[i]
    }
    return output
}
