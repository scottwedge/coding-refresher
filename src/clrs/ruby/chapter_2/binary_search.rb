######################################## VERSION 1 ########################################
# binary search iterative implementation
def binary_search(arr, key)
  low = 0
  high = arr.length - 1
  while(low <= high)
    mid = low + (high - low)/2
    if(key == arr[mid])
      return mid
    elsif key < arr[mid]
      high = mid - 1
    else
      low = mid + 1
    end
  end
  return -1
end

arr = [1,2,3,4,5,6,7,8,9,10]
arr.each_with_index do |key, index|
  puts index == binary_search(arr, key)
end

######################################## VERSION 2 ########################################
# Binary Search recursive solution
def recursive_binary_search(arr, key, low = 0, high = arr.length - 1)
  return -1 if low > high
  mid = low + (high - low)/2
  return mid if key == arr[mid]
  return recursive_binary_search(arr, key, low, mid - 1) if key < arr[mid]
  return recursive_binary_search(arr, key, mid + 1, high)
end

arr = [1,2,3,4,5,6,7,8,9,10]
arr.each_with_index do |key, index|
  puts index == recursive_binary_search(arr, key)
end