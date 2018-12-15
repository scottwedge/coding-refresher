# selection sort works by repeatedly finding the min element and swapping it

def selection_sort(arr)
  # on the last before swap the correct sorted order will be obtained so
  # it is enough if we traverse till last before element
  n = arr.length - 2
  0.upto(n) do |i|
    min_index = find_min(arr, i)
    arr[i], arr[min_index] = arr[min_index], arr[i]
  end
end

def find_min(arr, start_index)
  min_index = start_index
  start_index.upto(arr.length - 1) do |current|
    min_index = current if arr[current] < arr[min_index]
  end
end

# it is possiblle to eliminate all loops with recursion itself