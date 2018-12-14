# this is just too simple
def linear_search(arr, key)
  # loop throug all elements
  # if the current element matches key return index
  # otherwise reurn -1
  arr.each_with_index do |val, idx|
    return idx if key == val
  end
  return -1
end
      
