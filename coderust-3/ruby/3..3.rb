def binary_search_modified_rec(arr, from, to, key)
  # assuming all the keys are unique.
  if (from > to)
    return -1
  end

  mid = from + ((to - from) / 2).floor

  if (arr[mid] == key)
    return mid
  end

  if (arr[from] < arr[mid] && key < arr[mid] && key >= arr[from])
    return binary_search_modified_rec(arr, from, mid - 1, key)
  elsif (arr[mid] < arr[to] && key > arr[mid] && key <= arr[to])
    return binary_search_modified_rec(arr, mid + 1, to, key)
  elsif (arr[from] > arr[mid])
    return binary_search_modified_rec(arr, from, mid - 1, key)
  elsif (arr[to] < arr[mid])
    return binary_search_modified_rec(arr, mid + 1, to, key)
  end

  return -1
end

def binary_search_rotated(arr, key)
  return binary_search_modified_rec(arr, 0, arr.length - 1, key)
end

def main()
  v1 = [6, 7, 1, 2, 3, 4, 5]
  puts v1.to_s
  puts("Key(3) for Binary Search found at: " + binary_search_rotated(v1, 3).to_s)
  v2 = [4, 5, 6, 1, 2, 3]
  puts v2.to_s
  puts("Key(6) for Binary Search found at:" + binary_search_rotated(v2, 6).to_s)
  puts("Key(1) for Binary Search found at:" + binary_search_rotated(v2, 1).to_s) 
  puts("Key(5) for Binary Search found at:" + binary_search_rotated(v2, 5).to_s)
  puts("Key(2) for Binary Search found at:" + binary_search_rotated(v2, 2).to_s)
  puts("Key(3) for Binary Search found at:" + binary_search_rotated(v2, 3).to_s)
  puts("Key(4) for Binary Search found at:" + binary_search_rotated(v2, 4).to_s)
end  

main()