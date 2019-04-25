# merge sort using insertion when the array size is sufficiently low
# choosing k is based on comparing nlogn and n2
# k should be such that when nlogn > n2 for a given n
# n    nlogn    n2
# 10   10*4     100
# 100  100*7         10000
# this doesn't hold good even when n is chosen to be as small as 10
# so why would people consider using insertion sort with merge sort at all ?
# it has to do with the ignored constant factor during asymptotic analysis
# when the array size is small the time take by insertion sort is small when compared to merge sort
# merge sort itself is a recursive algorithm so lets see
# i would have to do an analysis with actual test case
# this "K" is persumably with in 100. let's just go ahead with 100
LIMIT = 100
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
  # instead of returning we get the size of the array
  # 
  if (high - low + 1) <= 100
    insertion_sort(arr, low, high)
  end
  mid = low + (high - low) / 2
  merge_sort(arr, low, mid)
  merge_sort(arr, mid + 1, high)
  merge(arr, low, mid, high)
end

def insertion_sort(arr,low, high)
  low.upto(high) do |index|
    key = arr[index]
    pos = index - 1
    while pos >= 0 && key <= arr[pos]
      # this could also have been written by swapping repeatedly
      # instead of copying the bigger element to the empty slot
      arr[pos + 1] = arr[pos]
      pos = pos - 1
    end
    arr[pos + 1] = key
  end
  arr
end