//: Playground - noun: a place where people can play

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

let nums = [1,2,3,4]

let result = productExceptSelf(nums)
print(result)

print(productExceptSelf2(nums))
