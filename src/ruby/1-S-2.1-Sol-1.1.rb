def insertion_sort(arr)
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