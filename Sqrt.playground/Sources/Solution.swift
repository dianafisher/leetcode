import Foundation

/*
 Implement int sqrt(int x).
 
 Compute and return the square root of x.
 
 x is guaranteed to be a non-negative integer.
 
 
 Example 1:
 
 Input: 4
 Output: 2
 Example 2:
 
 Input: 8
 Output: 2
 Explanation: The square root of 8 is 2.82842..., and since we want to return an integer, the decimal part will be truncated.
 
 */

class Solution {
    func mySqrt(_ x: Int) -> Int {
        if x == 0 || x == 1 {
            return x
        }
        
        // use binary search..
        
        var start = 1
        var end = x
        var result = 0
        
        while start <= end {
            
            let mid = (start + end) / 2
            let square = mid * mid
            
            if square == x {
                return mid
            }
            if square < x {
                // reset start to mid + 1
                start = mid + 1
                result = mid
            } else {
                end = mid - 1
            }
        }
        
        return result
    }
}

