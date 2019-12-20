=begin
Given a singly linked list L: L0→L1→…→Ln-1→Ln,
reorder it to: L0→Ln→L1→Ln-1→L2→Ln-2→…

You may not modify the values in the list's nodes, only nodes itself may be changed.

Example 1:

Given 1->2->3->4, reorder it to 1->4->2->3.
Example 2:

Given 1->2->3->4->5, reorder it to 1->5->2->4->3.
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
# @return {Void} Do not return anything, modify head in-place instead.
# space O(n) Time O(n)
def reorder_list(head)
  st = []
  while(head)
    st.push(head)
    head = head.next
  end
  i = 0
  limit = st.length/2
  while(i < limit)
    last = st.pop
    st[i].next = last
    last.next = st[i+1]
    i += 1
  end
  st[i].next = nil if st[i]
  return st[0]
end


# space O(1)
=begin
class Solution {
    public void reorderList(ListNode head) {
        if(head == null || head.next == null) return;
        
        // find mid ListNode
        ListNode slow = head;
        ListNode fast = head.next;
        while(fast != null && fast.next != null){
            slow = slow.next;
            fast = fast.next.next;
        }
        //after this iteration, slow is mid

        // reverse slow.next
        ListNode h2 = reverse(slow.next);
        // slow.next = null
        slow.next = null;
        ListNode h1 = head;
        //megre two list
        // example: h1: 1->2, h2: 4->3
        // example: h1: 1->2->3, h2: 5->4
        while(h1 != null && h2 != null){
            ListNode h1Next = h1.next;
            ListNode h2Next = h2.next;

            h1.next = h2;
            h2.next = h1Next;

            h1 = h1Next;
            h2 = h2Next;  
        }
    }

    private ListNode reverse(ListNode head){
        ListNode prev = null;
        ListNode cur = head;
        while(cur != null){
            ListNode next = cur.next;
            cur.next = prev;
            prev = cur;
            cur = next;
        }
        return prev;
    }

    //time: O(n), space: O(1)
}
=end