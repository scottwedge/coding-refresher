# insertion sort on recursion
# this can be done in two ways
# starting from the whole array and going to the beginning and doing insertion sort when coming back or
# starting the insertion from the beginning and reaching till the end of array
def insertion_sort(arr, i = arr.length - 1)
  return if i < 1
  insertion_sort(arr, i - 1)
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