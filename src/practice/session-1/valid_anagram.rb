=begin
Given two strings s and t , write a function to determine if t is an anagram of s.

Example 1:

Input: s = "anagram", t = "nagaram"
Output: true
Example 2:

Input: s = "rat", t = "car"
Output: false
Note:
You may assume the string contains only lowercase alphabets.

Follow up:
What if the inputs contain unicode characters? How would you adapt your solution to such case?
=end

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  return false if s.length != t.length
  sdict = Array.new(26) {0}
  s.each_char do |c|
    sdict[c.ord - 'a'.ord] += 1
  end
  
  t.each_char do |c|
    sdict[c.ord - 'a'.ord] -= 1
    return false if sdict[c.ord - 'a'.ord] < 0
  end
  return true
end