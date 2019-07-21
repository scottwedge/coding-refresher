def find_max(arr)
  return helper(arr, 0, arr.size - 1)
end

def helper(arr, low, high)
  if low > high
    return arr[low]
  end
  if low == high
    return arr[low]
  end
  mid = low + (high - low) / 2
  l_max = helper(arr, low, mid - 1)
  r_max = helper(arr, mid + 1, high)
  return [l_max, r_max, arr[mid]].max
end
