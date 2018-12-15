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