def binary_search_rotated(a, key)
  #TODO: Write - Your - Code
  low = 0
  high = a.size - 1
  while(low <= high)
    mid = low + (high - low)/2
    if(key == a[mid])
      return mid
    elsif a[low] <= a[mid]
      if(key < a[mid] && key >= a[low])
        high = mid - 1
      else
        low = mid + 1
      end
    else
      if(key > a[mid] && key <= a[high])
        low = mid + 1
      else
        high = mid - 1
      end
    end
  end
  return -1
end

def test()
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

test