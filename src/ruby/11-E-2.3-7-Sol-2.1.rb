# given a number n find out whether there are two numbers a,b present in an array so that a + b = n
# O(n) solution for the same problem
require "set"
def two_sum(arr, target)
  s = Set.new
  arr.each do |val|
    num = target - val
    return true if s.include?num
    s << val
  end
  return false
end