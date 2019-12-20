=begin
Merge k sorted linked lists and return it as one sorted list. Analyze and describe its complexity.

Example:

Input:
[
  1->4->5,
  1->3->4,
  2->6
]
=end

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode[]} lists
# @return {ListNode}
def merge_k_lists(lists)
  dummy = prev = ListNode.new(-1)
  while(min_index = get_min_index(lists))
    min = lists[min_index]
    prev.next = min
    lists[min_index] = min.next
    prev = prev.next
    prev.next = nil
  end
  return dummy.next
end

def get_min_index(lists)
  min_index = nil
  lists.each_with_index do |l, i|
    if l && (min_index == nil || l.val < lists[min_index].val)
      min_index = i
    end
  end
  return min_index
end











=begin
different soluions

All Approaches with java.
Approach 1

public ListNode mergeKLists(ListNode[] lists) {
    List<Integer> l = new ArrayList<Integer>();
   
    for (ListNode ln : lists) {
        while (ln != null) {
            l.add(ln.val);
            ln = ln.next;
        }
    }
   
    Collections.sort(l);
 
    ListNode head = new ListNode(0);
    ListNode h = head;
    for (int i : l) {
        ListNode t = new ListNode(i);
        h.next = t;
        h = h.next;
    }
    h.next = null;
    return head.next;
}
Approach 2: Compare one by one
O(n) space.

public ListNode mergeKLists(ListNode[] lists) {
    int min_index = 0;
    ListNode head = new ListNode(0);
    ListNode h = head;
    while (true) {
        boolean isBreak = true; 
        int min = Integer.MAX_VALUE;
        for (int i = 0; i < lists.length; i++) {
            if (lists[i] != null) { 
                if (lists[i].val < min) {
                    min_index = i;
                    min = lists[i].val;
                } 
                isBreak = false;
            }

        }
        if (isBreak) {
            break;
        } 
        ListNode a = new ListNode(lists[min_index].val);
        h.next = a;
        h = h.next; 
        lists[min_index] = lists[min_index].next;
    }
    h.next = null;
    return head.next;
}
O(1) space

public ListNode mergeKLists(ListNode[] lists) {
    int min_index = 0;
    ListNode head = new ListNode(0);
    ListNode h = head;
    while (true) {
        boolean isBreak = true;
        int min = Integer.MAX_VALUE;
        for (int i = 0; i < lists.length; i++) {
            if (lists[i] != null) {
                if (lists[i].val < min) {
                    min_index = i;
                    min = lists[i].val;
                }
                isBreak = false;
            }

        }
        if (isBreak) {
            break;
        } 
        h.next = lists[min_index];
        h = h.next;
        lists[min_index] = lists[min_index].next;
    }
    h.next = null;
    return head.next;
}
Approach 3: Optimize Approach 2 by Priority Queue

public ListNode mergeKLists(ListNode[] lists) { 
        Comparator<ListNode> cmp;
        cmp = new Comparator<ListNode>() {  
        @Override
        public int compare(ListNode o1, ListNode o2) {
            // TODO Auto-generated method stub
            return o1.val-o2.val;
        }
        };
 
        Queue<ListNode> q = new PriorityQueue<ListNode>(cmp);
        for(ListNode l : lists){
            if(l!=null){
                q.add(l);
            }        
        }
        ListNode head = new ListNode(0);
        ListNode point = head;
        while(!q.isEmpty()){ 
            point.next = q.poll();
            point = point.next; 
            ListNode next = point.next;
            if(next!=null){
                q.add(next);
            }
        }
        return head.next;
    }
Approach 4: Merge lists one by one

public ListNode mergeTwoLists(ListNode l1, ListNode l2) {
    ListNode h = new ListNode(0);
    ListNode ans=h;
    while (l1 != null && l2 != null) {
        if (l1.val < l2.val) {
            h.next = l1;
            h = h.next;
            l1 = l1.next;
        } else {
            h.next = l2;
            h = h.next;
            l2 = l2.next;
        }
    }
    if(l1==null){
        h.next=l2;
    }
    if(l2==null){
        h.next=l1;
    } 
    return ans.next;
}
public ListNode mergeKLists(ListNode[] lists) {
    if(lists.length==1){
        return lists[0];
    }
    if(lists.length==0){
        return null;
    }
    ListNode head = mergeTwoLists(lists[0],lists[1]);
    for (int i = 2; i < lists.length; i++) {
        head = mergeTwoLists(head,lists[i]);
    }
    return head;
}
Approach 5: Merge with Divide And Conquer

public ListNode mergeTwoLists(ListNode l1, ListNode l2) {
    ListNode h = new ListNode(0);
    ListNode ans=h;
    while (l1 != null && l2 != null) {
        if (l1.val < l2.val) {
            h.next = l1;
            h = h.next;
            l1 = l1.next;
        } else {
            h.next = l2;
            h = h.next;
            l2 = l2.next;
        }
    }
    if(l1==null){
        h.next=l2;
    }
    if(l2==null){
        h.next=l1;
    } 
    return ans.next;
}
public ListNode mergeKLists(ListNode[] lists) {
    if(lists.length==0){
        return null;
    }
    int interval = 1;
    while(interval<lists.length){
        System.out.println(lists.length);
        for (int i = 0; i + interval< lists.length; i=i+interval*2) {
            lists[i]=mergeTwoLists(lists[i],lists[i+interval]);            
        }
        interval*=2;
    }

    return lists[0];
}

Approach 5 recursive:

class Solution {
	// recursive merge
	private ListNode mergeSortedLists(ListNode list1, ListNode list2) {
		if (list1 == null)
			return list2;
		if (list2 == null)
			return list1;

		if (list1.val < list2.val) {
			list1.next = mergeSortedLists(list1.next, list2);
			return list1;
		} else {
			list2.next = mergeSortedLists(list2.next, list1);
			return list2;
		}
	}

	public ListNode mergeKLists(ListNode[] lists, int start, int end) {

		// base cases
		if (start > end)
			return null;
		if (start == end)
			return lists[start];

		// divide and conquer
		int middle = (end + start) / 2;
		ListNode leftList = mergeKLists(lists, start, middle);
		ListNode rightList = mergeKLists(lists, middle + 1, end);
		return mergeSortedLists(leftList, rightList);
	}

	public ListNode mergeKLists(ListNode[] lists) {
		return mergeKLists(lists, 0, lists.length - 1);
	}
}
=end