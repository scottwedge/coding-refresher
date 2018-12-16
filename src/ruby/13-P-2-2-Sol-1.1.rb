def bubble_sort(arr)
  n = arr.length - 1
  for i in 0..n
    for j in 0..n-i-1
      if(arr[j] > arr[j+1])
        arr[j], arr[j+1] = arr[j+1], arr[j]
      end
    end
  end
end