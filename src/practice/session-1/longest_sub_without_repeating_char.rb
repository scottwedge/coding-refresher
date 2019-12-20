=begin
Given a string, find the length of the longest substring without repeating characters.

Example 1:

Input: "abcabcbb"
Output: 3 
Explanation: The answer is "abc", with the length of 3. 
Example 2:

Input: "bbbbb"
Output: 1
Explanation: The answer is "b", with the length of 1.
Example 3:

Input: "pwwkew"
Output: 3
Explanation: The answer is "wke", with the length of 3. 
             Note that the answer must be a substring, "pwke" is a subsequence and not a substring.
=end

# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  seen = {}
  last = cur = 0
  start = 0
  s.chars.each_with_index do |c, i|
    if seen[c] && seen[c] >= start
      cur = i - seen[c]
      start = seen[c]
    else
      cur += 1
    end
    seen[c] = i
    if cur > last
      last = cur
    end
  end
  return last
end