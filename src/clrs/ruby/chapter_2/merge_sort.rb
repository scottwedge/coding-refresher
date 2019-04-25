######################################## VERSION 1 ########################################
# merge sort itself is a recursive algorithm so lets see
# this is based on the text book implementation
def merge(arr, low, mid, high)
  left = arr.slice(low..mid)
  right = arr.slice(mid+1..high)
  l = r = 0
  for i in low..high
    if (l < left.length && (
      r >= right.length || 
      left[l] < right[r]
    ))
      arr[i] = left[l]
      l = l + 1
    else
      arr[i] = right[r]
      r = r + 1
    end
  end
end

def merge_sort(arr, low = 0, high = arr.length - 1)
  return if low >= high
  mid = low + (high - low) / 2
  merge_sort(arr, low, mid)
  merge_sort(arr, mid + 1, high)
  merge(arr, low, mid, high)
end

########################################  Version 2 ########################################
# this implementation is based on the standford cs106b
# merge sort itself is a recursive algorithm so lets see
def merge_sort(arr)
  return if arr.length <= 1
  # split array to two
  left,right = arr.each_slice((arr.length/2.0).round).to_a
  
  # sort the two halves
  merge_sort(left)
  merge_sort(right)
  
  # merge the sorted halves
  l = r = 0
  for i in 0..arr.length-1
    if (l < left.length && (
      r >= right.length || 
      left[l] < right[r]
    ))
      arr[i] = left[l]
      l = l + 1
    else
      arr[i] = right[r]
      r = r + 1
    end
  end
end

a = [5,4]
merge_sort(a)
a