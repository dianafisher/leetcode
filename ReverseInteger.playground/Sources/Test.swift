import Foundation

public class Test {
    
    public static func example1() {
        let solution = Solution()
        let result = solution.reverse(123)
        print("resverse of 123 = \(result)")
    }
    
    public static func example2() {
        let solution = Solution()
        let result = solution.reverse(-123)
        print("resverse of -123 = \(result)")
        
    }
    
    public static func example3() {
        let solution = Solution()
        let result = solution.reverse(120)
        print("resverse of 120 = \(result)")
        
        print("reverse of 1000000003 = \(solution.reverse(1000000003))")
    }

}

