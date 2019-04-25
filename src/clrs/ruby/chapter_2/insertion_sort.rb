######################################## VERSION 1 ########################################
# this is the traditional insertion sort implemention for ascending
def iterative_insertion_sort(arr)
  1.upto(arr.length - 1) do |index|
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

######################################## VERSION 2 ########################################
# insertion sort on recursion
# this can be done in two ways
# starting from the whole array and going to the beginning and doing insertion sort when coming back or
# starting the insertion from the beginning and reaching till the end of array
def recursive_insertion_sort(arr, i = arr.length - 1)
  return if i < 1
  recursive_insertion_sort(arr, i - 1)
  key = arr[i]
  j = i - 1
  while(j >= 0 && key < arr[j])
    arr[j + 1] =arr[j]
    j = j - 1
  end
  arr[j + 1] = key
end
# call it like this
# a = [5, 4, 3, 2, 1]
# insertion_sort(a)

######################################## VERSION 3 ########################################
# this is the second version of insertion sort
def recursive_insertion_sort_version_two(arr, i = 1)
  key = arr[i]
  j = i -1
  while(j >= 0 && key < arr[j])
    arr[j + 1] = arr[j]
    j = j - 1
  end
  arr[j + 1] = key
  recursive_insertion_sort_version_two(arr, i + 1) if i < arr.length - 1
end
# a = [5, 4, 3, 2, 1]
# insertion_sort(a)

######################################## Version 4 ########################################
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