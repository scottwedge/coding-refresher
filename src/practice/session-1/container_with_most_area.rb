=begin
Given n non-negative integers a1, a2, ..., an , where each represents a point at coordinate (i, ai). n vertical lines are drawn such that the two endpoints of line i is at (i, ai) and (i, 0). Find two lines, which together with x-axis forms a container, such that the container contains the most water.

Note: You may not slant the container and n is at least 2.

 



The above vertical lines are represented by array [1,8,6,2,5,4,8,3,7]. In this case, the max area of water (blue section) the container can contain is 49.

 

Example:

Input: [1,8,6,2,5,4,8,3,7]
Output: 49
=end

# @param {Integer[]} height
# @return {Integer}
def max_area(heights)
  l = 0
  r = heights.length - 1
  max_area = 0
  while(l < r)
    height = [heights[l], heights[r]].min
    width = r - l
    area = height * width
    if area > max_area
      max_area = area
    end
    if heights[l] < heights[r]
      l += 1
    else
      r -= 1
    end
  end
  return max_area
end

# proofs
# https://leetcode.com/problems/container-with-most-water/discuss/6089/Anyone-who-has-a-O(N)-algorithm/7268
# https://leetcode.com/problems/container-with-most-water/discuss/6099/yet-another-way-to-see-what-happens-in-the-on-algorithm
# https://leetcode.com/problems/container-with-most-water/discuss/6100/Simple-and-clear-proofexplanation