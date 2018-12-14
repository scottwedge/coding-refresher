# this is the second version of insertion sort
def insertion_sort(arr, i = 1)
  key = arr[i]
  j = i -1
  while(j >= 0 && key < arr[j])
    arr[j + 1] = arr[j]
    j = j - 1
  end
  arr[j + 1] = key
  insertion_sort(arr, i + 1) if i < arr.length - 1
end
# a = [5, 4, 3, 2, 1]
# insertion_sort(a)