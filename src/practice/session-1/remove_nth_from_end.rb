=begin
Given a linked list, remove the n-th node from the end of list and return its head.

Example:

Given linked list: 1->2->3->4->5, and n = 2.

After removing the second node from the end, the linked list becomes 1->2->3->5.
Note:

Given n will always be valid.

Follow up:

Could you do this in one pass?
=end
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
  i = 1
  prev = slow = fast = head
  while(i<n)
    fast = fast.next
    i += 1
  end
  while(fast && fast.next)
    prev = slow
    slow = slow.next
    fast = fast.next
  end
  if slow == head
    return head.next
  else
    prev.next = slow.next
  end
  return head
end

=begin
public static ListNode removeNthFromEnd2(ListNode head, int n) {
  if (head == null || n < 0) {
      return null;
  }
  ListNode dummyHead = new ListNode(-1);
  dummyHead.next = head;
  ListNode frontNode = dummyHead;
  ListNode endNode = dummyHead;
  for (int i = 0; i < n + 1; i++) {
      endNode = endNode.next;
  }
  while (endNode != null) {
      frontNode = frontNode.next;
      endNode = endNode.next;
  }
  ListNode delNode = frontNode.next;
  frontNode.next = delNode.next;
  return dummyHead.next;
}
=end