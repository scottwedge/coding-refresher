
######################################## VERSION 1 ########################################
# given a number n find out whether there are two numbers a,b present in an array so that a + b = n
# the problem asks for a two sum problem
# but there is actually a linear solution possible.
# just store the elements into a set. iterate over the array and check n - element is part of the array.
def two_sum(arr, target)
  a = arr.sort
  low = 0
  high = arr.length - 1
  while(low < high)
    sum = arr[low] + arr[high]
    if sum == target
      return true
    elsif(sum < target)
      low += 1
    else
      high -= 1
    end
  end
  return false
end



######################################## VERSION 2 ########################################
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