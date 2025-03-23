/**
 * Definition for singly-linked list.
 * class ListNode {
 *     int val;
 *     ListNode next;
 *     ListNode(int x) {
 *         val = x;
 *         next = null;
 *     }
 * }
 */
public class Solution {
    public boolean hasCycle(ListNode head) {
        if (head == null) {
            return false;
        }
        Set<ListNode> set = new HashSet<>();
        ListNode node = head;
        while (true) {
            node = node.next;
            if (node == null) {
                return false;
            }
            if (set.contains(node)) {
                return true;
            }
            
            set.add(node);
        }
    }
}