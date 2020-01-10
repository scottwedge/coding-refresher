
=begin
Given a non negative integer number num. For every numbers i in the range 0 ≤ i ≤ num calculate the number of 1's in their binary representation and return them as an array.

Example 1:

Input: 2
Output: [0,1,1]
Example 2:

Input: 5
Output: [0,1,1,2,1,2]
Follow up:

It is very easy to come up with a solution with run time O(n*sizeof(integer)). But can you do it in linear time O(n) /possibly in a single pass?
Space complexity should be O(n).
Can you do it like a boss? Do it without using any builtin function like __builtin_popcount in c++ or in any other language.
=end

=begin Solution 1
# @param {Integer} num
# @return {Integer[]}
def count_bits(num)
  result = []
  0.upto(num) do |n|
    result.push(hamming_weight(n))
  end
  return result
end

def hamming_weight(n)
  count = 0
  while n > 0
    count += n & 1
    n = n >> 1
  end
  return count
end
=end

# @param {Integer} num
# @return {Integer[]}
def count_bits(num)
  result = Array.new(num + 1)
  result[0] = 0
  1.upto(num) do |n|
    if n % 2 == 0
      result[n] = result[n >> 1]
    else
      result[n] = result[n-1] + (n & 1)
    end
  end
  return result
end
    
# https://leetcode.com/problems/counting-bits/discuss/270693/Intermediate-processsolution-for-the-most-voted-solution-i.e.-no-simplificationtrick-hidden