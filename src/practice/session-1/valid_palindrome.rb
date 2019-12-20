=begin
Given a string, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.

Note: For the purpose of this problem, we define empty string as valid palindrome.

Example 1:

Input: "A man, a plan, a canal: Panama"
Output: true
Example 2:

Input: "race a car"
Output: false
=end

# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  i = 0
  j = s.length - 1
  while(i < j)
    if !alphanum?(s[i])
      i += 1
      next
    end
    if !alphanum?(s[j])
      j -= 1
      next
    end
    if s[i].downcase != s[j].downcase
      return false
    end
    i += 1
    j -= 1
  end
  return true
end
  
def alphanum?(c)
  (
    c.ord >= 'a'.ord &&
    c.ord <= 'z'.ord
  ) || (
    c.ord >= 'A'.ord &&
    c.ord <= 'Z'.ord
  ) || (
    c.ord >= '0'.ord &&
    c.ord <= '9'.ord
  )
end