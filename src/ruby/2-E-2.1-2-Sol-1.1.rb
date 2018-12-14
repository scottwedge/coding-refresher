# this is basically same the previous solution just that the comparison changes
# this should have been written with comparator proc
# but write it anyway from scratch
def insertion_sort(arr)
  1.upto(arr.length - 1) do |idx|
    # copy the key element to be inserted
    key = arr[idx]
    # comparison starts from last element of loop invariant
    j = idx - 1
    # copy the smaller element to next to create slot for insertion
    while(j >= 0 && key > arr[j])
      arr[j + 1] = arr[j]
      j = j - 1
    end
    # copy the key back
    arr[j + 1] = key
  end
end