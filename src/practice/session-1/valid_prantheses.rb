=begin
Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

An input string is valid if:

Open brackets must be closed by the same type of brackets.
Open brackets must be closed in the correct order.
Note that an empty string is also considered valid.

Example 1:

Input: "()"
Output: true
Example 2:

Input: "()[]{}"
Output: true
Example 3:

Input: "(]"
Output: false
Example 4:

Input: "([)]"
Output: false
Example 5:

Input: "{[]}"
Output: true
=end
# @param {String} s
# @return {Boolean}
def is_valid(s)
  dict = {
    ")": "(",
    "}": "{",
    "]": "["
  }
  st = []
  s.each_char do |c|
    if dict[c.to_sym]
      last = st.pop
      return false if last != dict[c.to_sym]
    else
      st.push c
    end
  end
  return st.empty? ? true : false
end