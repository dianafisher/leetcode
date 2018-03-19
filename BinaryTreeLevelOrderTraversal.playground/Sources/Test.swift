import Foundation

public class Test {
    
    public static func run() {
        let solution = Solution()
        
        let root = TreeNode(3)
        root.left = TreeNode(9)
        root.right = TreeNode(20)
        root.right!.left = TreeNode(15)
        root.right!.right = TreeNode(7)
        
        let result = solution.levelOrder(root)
        print(result)

    }
}


