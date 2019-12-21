=begin
Given an integer array nums, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.

Example:

Input: [-2,1,-3,4,-1,2,1,-5,4],
Output: 6
Explanation: [4,-1,2,1] has the largest sum = 6.
Follow up:

If you have figured out the O(n) solution, try coding another solution using the divide and conquer approach, which is more subtle.
=end

# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
  max = nums.first
  sum = 0
  nums.each do |n|
    sum = [sum + n, n].max
    max = [sum, max].max
  end
  return max
end

=begin
Can be solved using Kadane's algorithm in linear time and without using additional space. The main ideas are:

Use the input vector nums to store the candidate subarrays sum (i.e. the greatest contiguous sum so far).
Ignore cumulative negatives, as they don't contribute positively to the sum.
Example:
Given nums = [-2, 1, -3, 4].
Compare all elements with the cumulative sum stored in the previous index.

Since -2 < 0, value -2 doesn't contribute to the sum. Thus, ignore it and proceed to the next index.
Since 1 > 0, value 1 does contribute. Hence, compute -3+1 = -2 and store it in index 2.
The result vector is so far: [-2, 1, -2, 4]. Last element to evaluate is 4.
Since -2 < 0, -2 does not contribute positively to the sum. Thus, ignore it.
Having checked all elements, the final result vector is: [-2, 1, -2, 4].
The maximum subarray is max(num)=4.
class Solution:
    def maxSubArray(self, nums: List[int]) -> int:
        for i in range(1, len(nums)):
            if nums[i - 1] > 0: 
                nums[i] += nums[i - 1]
        return max(nums
     
        


Divde and Conquer
class Solution:
    # @param {integer[]} nums
    # @return {integer}
     

     def maxSubArrayHelper(self,nums, l, r):
        if l > r:
            return -2147483647
        m = (l+r) / 2
        
        leftMax = sumNum = 0
        for i in range(m - 1, l - 1, -1):
            sumNum += nums[i]
            leftMax = max(leftMax, sumNum)
        
        rightMax = sumNum = 0
        for i in range(m + 1, r + 1):
            sumNum += nums[i]
            rightMax = max(rightMax, sumNum)
            
        leftAns = self.maxSubArrayHelper(nums, l, m - 1)
        rightAns = self.maxSubArrayHelper(nums, m + 1, r)
            
        return max(leftMax + nums[m] + rightMax, max(leftAns, rightAns))
        
     def maxSubArray(self, nums):
        return self.maxSubArrayHelper(nums, 0, len(nums) - 1)

Dynamic programming - Tabulation

def max_sub_array(nums)
  @cache = [nums[0]]
  (1...nums.length).each { |i|
    @cache[i] = [nums[i], nums[i] + @cache[i-1]].max
  }
  @cache.max
end
Dynamic programming - Memoization

def max_sub_array(nums)
  @cache = []
  max_sum(nums, nums.length-1)
  @cache.max
end

def max_sum(nums, i)
  return @cache[i] = nums[0] if i == 0
  return if i == nums.length
  
  @cache[i] = [(nums[i] + max_sum(nums, i-1)), nums[i]].max
end
Divide and Conquer

def max_sub_array(nums)
  max_sum(nums, 0, nums.length-1)
end

def max_sum(nums, l, h)
  return nums[l] if l == h
  m = (l+h)/2
  [max_sum(nums, l, m), max_sum(nums, m+1, h), max_crossing_sum(nums, l, m, h)].max
end

def max_crossing_sum(nums, l, m, h)
  sum = 0
  left_sum = -10000000
  (0..m).reverse_each { |i|
    sum += nums[i]
    left_sum = sum if sum > left_sum
  }
  sum = 0
  right_sum = -10000000
  (m+1..h).each { |i|
    sum += nums[i]
    right_sum = sum if sum > right_sum
  }
  left_sum + right_sum
end
=end