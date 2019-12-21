=begin
Suppose an array sorted in ascending order is rotated at some pivot unknown to you beforehand.

(i.e.,  [0,1,2,4,5,6,7] might become  [4,5,6,7,0,1,2]).

Find the minimum element.

You may assume no duplicate exists in the array.

Example 1:

Input: [3,4,5,1,2] 
Output: 1
Example 2:

Input: [4,5,6,7,0,1,2]
Output: 0
=end

# @param {Integer[]} nums
# @return {Integer}
def find_min(nums)
  # return nums.first if nums.length > 1 && nums.first < nums.last
  low = 0
  high = nums.length - 1
  min = nums[0]
  while(low <= high)
    mid = low + (high - low) /2
    min = nums[mid] if nums[mid] < min
    if(nums[mid] < nums.last)
      high = mid - 1
    else
      low = mid + 1
    end
  end
  return min
end

=begin
def find_min(nums)
  nums.bsearch { |num| num <= nums.last }
end
=end