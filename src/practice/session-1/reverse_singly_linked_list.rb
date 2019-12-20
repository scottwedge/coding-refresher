=begin
Reverse a singly linked list.

Example:

Input: 1->2->3->4->5->NULL
Output: 5->4->3->2->1->NULL
Follow up:

A linked list can be reversed either iteratively or recursively. Could you implement both?
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
# @return {ListNode}
# iterative
def reverse_list_iterative(head)
  prev, cur, nex = nil, head, nil
  while(cur)
    nex = cur.next
    cur.next = prev
    prev = cur
    cur = nex
  end
  return prev
end

def reverse_list_recursive(head)
  if(!head || !head.next)
    return head
  end
  new_head = reverse_list_recursive(head.next)
  head.next.next = head
  head.next = nil
  return new_head
end