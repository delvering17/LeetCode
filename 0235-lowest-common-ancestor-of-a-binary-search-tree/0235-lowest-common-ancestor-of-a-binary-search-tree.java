/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     int val;
 *     TreeNode left;
 *     TreeNode right;
 *     TreeNode(int x) { val = x; }
 * }
 */

class Solution {
    public TreeNode lowestCommonAncestor(TreeNode root, TreeNode p, TreeNode q) {
        return checkNode(root, p, q);
    }

    public TreeNode checkNode(TreeNode target, TreeNode p, TreeNode q) {
        if (target == null) {
            return null;
        }

        if (target.val == p.val || target.val == q.val) {
            return target;
        }

        TreeNode left = checkNode(target.left, p, q);
        TreeNode right = checkNode(target.right, p, q);

        if (left != null && right != null) {
            return target;
        };
        if (left != null) return left;
        if (right != null) return right;

        return null;
    }
}