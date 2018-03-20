import Foundation

/*
 Given a 32-bit signed integer, reverse digits of an integer.
 
 Example 1:
 
 Input: 123
 Output:  321
 Example 2:
 
 Input: -123
 Output: -321
 Example 3:
 
 Input: 120
 Output: 21
 Note:
 Assume we are dealing with an environment which could only hold integers within the 32-bit signed integer range. For the purpose of this problem, assume that your function returns 0 when the reversed integer overflows.
 
 
 Solution:
 
 initialize reversed to 0
 keep dividing x by 10 to get the digits of x (starting from right to left)
 reversed = reversed * 10 plus (x % 10)
 check for overflow each time
 */

class Solution {
    
    func reverse(_ x: Int) -> Int {
        
        var reversed = 0
        var num = x
        
        while num != 0 {
            reversed = reversed * 10 + num % 10
            num /= 10
        
            // check for overflow..
            if reversed < 0 {
                if num != 0 && Int32.min/10 > reversed {
                    return 0
                }
            }
            if reversed > 0 {
                if num != 0 && Int32.max/10 < reversed {
                    return 0
                }
            }
        }
        
        
        return reversed
    }
}

