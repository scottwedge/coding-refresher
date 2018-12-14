def insertion_sort(arr, i = arr.length - 1)
  # do nothing if the index is 0 i.e base case
  return if i < 1
  # recursion
  insertion_sort(arr, i - 1)
  key = arr[i]
  j = i - 1 
  while(j >= 0 && key > arr[j])
    arr[j + 1] = arr[j]
    j = j - 1
  end
  arr[j + 1] = key
end