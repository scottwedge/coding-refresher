######################################## VERSION 1 ########################################
# selection sort works by repeatedly finding the min element and swapping it
def selection_sort(arr)
  # on the last before swap the correct sorted order will be obtained so
  # it is enough if we traverse till last before element
  n = arr.length - 2
  0.upto(n) do |i|
    min_index = iterative_find_min(arr, i)
    arr[i], arr[min_index] = arr[min_index], arr[i]
  end
end

def iterative_find_min(arr, start_index)
  min_index = start_index
  start_index.upto(arr.length - 1) do |current|
    min_index = current if arr[current] < arr[min_index]
  end
end

######################################## VERSION 2 ########################################
# it is possiblle to eliminate all loops with recursion itself
# even the sub parts like find minimum should be written in recursion if i'm aiming for a recursive algo
# so this process needs to happen for n-1 times from 0 to n-2
def selection_sort_recursive(arr, i = 0)
  return if i == arr.length - 1
  min_index = find_min(arr, i)
  arr[i], arr[min_index] = arr[min_index], arr[i] 
  selection_sort_recursive(arr, i + 1)
end

def find_min(arr, i)
  return i if i == arr.length - 1
  min_index = find_min(arr, i + 1)
  return arr[min_index] < arr[i] ? min_index : i
end