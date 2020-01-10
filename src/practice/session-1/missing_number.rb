=begin
Given an array containing n distinct numbers taken from 0, 1, 2, ..., n, find the one that is missing from the array.

Example 1:

Input: [3,0,1]
Output: 2
Example 2:

Input: [9,6,4,2,3,5,7,0,1]
Output: 8
Note:
Your algorithm should run in linear runtime complexity. Could you implement it using only constant extra space complexity?
=end

# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
  total = (nums.size * (nums.size + 1)) / 2
  return total - nums.sum
end

=begin
# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
  result = 0
  nums.each_with_index do |n, index|
    result = result ^ n ^ index
  end
  return result ^ nums.size
end
=end