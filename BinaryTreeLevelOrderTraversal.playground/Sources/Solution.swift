import Foundation

/*
 
 Given a binary tree, return the level order traversal of its nodes' values. (ie, from left to right, level by level).
 
 For example:
 Given binary tree [3,9,20,null,null,15,7],
       3
      / \
     9   20
    /     \
   15      7
 
 return its level order traversal as:
 [
    [3],
    [9,20],
    [15,7]
 ]
 
 Solution: Use two queues: One to track the current level, the other to track the next level.
 
 */

class Solution {
    
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        var result: [[Int]] = [[Int]]()
        var level: [Int] = [Int]()
        if root == nil {
            return result
        }
        
        var current: Queue<TreeNode> = Queue<TreeNode>()
        var next: Queue<TreeNode> = Queue<TreeNode>()
        
        current.enqueue(root!)
        
        while !current.isEmpty {
            let node = current.dequeue()!
            
            if node.left != nil {
                next.enqueue(node.left!)
            }

            if node.right != nil {
                next.enqueue(node.right!)
            }
            
            level.append(node.val)
            
            if current.isEmpty {
                current = next
                next = Queue<TreeNode>()
                result.append(level)
                level = [Int]()
            }
        }
                
        return result
    }
}

