=begin
Merge two sorted linked lists and return it as a new list. The new list should be made by splicing together the nodes of the first two lists.

Example:

Input: 1->2->4, 1->3->4
Output: 1->1->2->3->4->4
=end
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def merge_two_lists_iterative(l1, l2)
  dummy = prev = ListNode.new(nil)
  while(l1 && l2)
    if(l1.val < l2.val)
      prev.next = l1
      l1 = l1.next
    else
      prev.next = l2
      l2 = l2.next
    end
    prev = prev.next
    prev.next = nil
  end
  prev.next = l1 if l1
  prev.next = l2 if l2
  return dummy.next
end

def merge_two_lists_recursive(l1, l2)
  return l1 if l2.nil?
  return l2 if l1.nil?
  if l1.val < l2.val
    l1.next = merge_two_lists_recursive(l1.next, l2)
  else
    l2.next = merge_two_lists_recursive(l1, l2.next)
  end
  # since we don't know what the head will be
  return l1 || l2
end