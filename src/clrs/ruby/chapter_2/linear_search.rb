######################################## VERSION 1 ########################################
# this is just too simple
def iterative_linear_search(arr, key)
  # loop throug all elements
  # if the current element matches key return index
  # otherwise reurn -1
  arr.each_with_index do |val, idx|
    return idx if key == val
  end
  return -1
end

######################################## VERSION 2 ########################################
# this is a recursive solution for the linear search
# have to remember that all recursion follows this format
# base case
# a repition of work
# like the insertion sort I can go from 0 to length of the array or
# from the length of the array down to 0
# it's all the same anyway
def recursive_linear_search(arr, key, pos = 0)
  return pos if key == arr[pos]
  return linear_search(arr, key, pos + 1) if pos < arr.length
  return -1
end