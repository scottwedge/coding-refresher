# insertion sort using binary search to find insertion point
def find_insertion_point(arr, limit, key)
  low = 0
  high = limit
  while(low < high)
    mid = low + (high - low) / 2
    if key == arr[mid]
      return mid + 1
    elsif arr[mid] > key
      high = mid - 1
    else
      low = mid + 1
    end
  end
  p [low, high]
  return key > arr[low]? low + 1: low
end

def insertion_sort(arr)
  1.upto(arr.length - 1) do |i|
    key = arr[i]
    j = i - 1
    loc = find_insertion_point(arr, j, key)
    while(j >= loc)
      arr[j+1] = arr[j]
      j = j - 1
    end
    arr[j + 1] = key
  end
end

arr = [50, 50, 50, 50, 50, 10, 15]
insertion_sort(arr)
p arr