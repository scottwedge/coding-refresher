# insertion sort gives it in order of n2
# its simple just count the number of swaps happening
# but we shouldn't be altering the original array most probably
# well we can make a copy of the original array and do it
# one more way is just count the number of smaller elements than the current element
def count_inversions(arr)
  n = arr.length-1
  inversions = 0
  for i in 0..n
    for j in i+1..n
      if(arr[i] > arr[j])
        inversions += 1
      end
    end
  end
  return inversions
end