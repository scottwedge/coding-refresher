# merge sort itself is a recursive algorithm so lets see
def merge(arr, low, mid, high)
  left = arr.slice(low..mid)
  right = arr.slice(mid+1..arr.length)
  l = r = 0
  for i in low..high
    if l < left.length && (r >= right.length || left[l] < right[r])
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