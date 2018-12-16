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