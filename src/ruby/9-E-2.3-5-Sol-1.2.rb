# Binary Search recursive solution
def binary_search(arr, key, low = 0, high = arr.length - 1)
  return -1 if low > high
  mid = low + (high - low)/2
  return mid if key == arr[mid]
  return binary_search(arr, key, low, mid - 1) if key < arr[mid]
  return binary_search(arr, key, mid + 1, high)
end

arr = [1,2,3,4,5,6,7,8,9,10]
arr.each_with_index do |key, index|
  puts index == binary_search(arr, key)
end