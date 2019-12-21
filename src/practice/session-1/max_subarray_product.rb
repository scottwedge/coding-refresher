=begin
Given an integer array nums, find the contiguous subarray within an array (containing at least one number) which has the largest product.

Example 1:

Input: [2,3,-2,4]
Output: 6
Explanation: [2,3] has the largest product 6.
Example 2:

Input: [-2,0,-1]
Output: 0
Explanation: The result cannot be 2, because [-2,-1] is not a subarray.
=end
# @param {Integer[]} nums
# @return {Integer}
def max_product(nums)
  min = max = 1
  max_prod = nums.first
  nums.each do |n|
    # min so far could become when n is negative and the max could become min vice verca
    min, max = [n, min * n, max * n].minmax
    max_prod = [max_prod, max].max
  end
  return max_prod
end