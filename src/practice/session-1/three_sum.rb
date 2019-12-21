=begin
Given an array nums of n integers, are there elements a, b, c in nums such that a + b + c = 0? Find all unique triplets in the array which gives the sum of zero.

Note:

The solution set must not contain duplicate triplets.

Example:

Given array nums = [-1, 0, 1, 2, -1, -4],

A solution set is:
[
  [-1, 0, 1],
  [-1, -1, 2]
]
=end

# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  nums = nums.sort
  p nums
  result = []
  i = 0
  while(i < nums.length - 2)
#   we would have already checked for the target
    if(i > 0 && nums[i] == nums[i-1])
      i += 1
      next
    end

    low = i + 1
    high = nums.length - 1
    while(low < high)
      sum = nums[i] + nums[low] + nums[high]
      if(sum == 0)
        result.push([nums[i], nums[low], nums[high]])
#         skip duplicate low
        low += 1 while(low < high && nums[low] == nums[low+1])
        high -= 1 while(high > low && nums[high] == nums[high-1])
        low += 1
        high -= 1
      elsif(sum > 0)
        high -= 1
      else
        low += 1
      end
    end

    i += 1  
  end
  return result
end
