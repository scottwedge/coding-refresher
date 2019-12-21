=begin
Suppose an array sorted in ascending order is rotated at some pivot unknown to you beforehand.

(i.e., [0,1,2,4,5,6,7] might become [4,5,6,7,0,1,2]).

You are given a target value to search. If found in the array return its index, otherwise return -1.

You may assume no duplicate exists in the array.

Your algorithm's runtime complexity must be in the order of O(log n).
=end
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  low = 0
  high = nums.length - 1
  while(low <= high)
    mid = low + (high - low) / 2
    if(nums[mid] == target)
      return mid
    end
#   first half is sorted
    if(nums[low] <= nums[mid])
      
      if(nums[low] <= target && nums[mid] > target)
        high = mid -1
      else
        low = mid + 1
      end
    else
      if(nums[mid] < target && nums[high] >= target)
        low = mid + 1
      else
        high = mid - 1
      end
    end
  end
  return -1
end