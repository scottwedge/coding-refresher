
######################################## VERSION 1 ########################################
# insertion sort gives it in order of n2
# its simple just count the number of swaps happening
# but we shouldn't be altering the original array most probably
# well we can make a copy of the original array and do it
# one more way is just count the number of smaller elements than the current element
def count_inversions(arr)
  n = arr.length-1
  inversions = 0
  for i in 0..n
    for j in i+1..n
      if(arr[i] > arr[j])
        inversions += 1
      end
    end
  end
  return inversions
end

######################################## VERSION 2 ########################################
# this is nlogn solution using merge sort
# here the number inversions is a little bit tricky
# when determining which is smaller between left and right
# i.e if right element is smaller it's not just a single element in left that is larger than the current element in right
# it is all the elements from the current left index position so it should left_array_size - current_index
# merge sort itself is a recursive algorithm so lets see
def merge(arr, low, mid, high)
  left = arr.slice(low..mid)
  right = arr.slice(mid+1..high)
  inversions = l = r = 0
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
      inversions += left.length - l
    end
  end
  return inversions
end

def merge_sort(arr, low = 0, high = arr.length - 1)
  inversions = 0
  return inversions if low >= high
  mid = low + (high - low) / 2
  inversions += merge_sort(arr, low, mid)
  inversions += merge_sort(arr, mid + 1, high)
  inversions += merge(arr, low, mid, high)
  return inversions
end