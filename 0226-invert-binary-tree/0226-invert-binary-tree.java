/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     int val;
 *     TreeNode left;
 *     TreeNode right;
 *     TreeNode() {}
 *     TreeNode(int val) { this.val = val; }
 *     TreeNode(int val, TreeNode left, TreeNode right) {
 *         this.val = val;
 *         this.left = left;
 *         this.right = right;
 *     }
 * }
 */
class Solution {
    public TreeNode invertTree(TreeNode root) {
        return invertNode(root);
    }
    
    private TreeNode invertNode(TreeNode node) {
        if (node == null) return null;

        TreeNode invertedLeftNode = invertNode(node.left);
        TreeNode invertedRightNode = invertNode(node.right);
        
        return new TreeNode(node.val, invertedRightNode, invertedLeftNode);
    }
}

