def find_max_sliding_window (arr, window_size)
  #TODO: Write - Your - Code
  result = []
  window = []
  # the first slide
  0.upto(window_size-1).each do |idx|
    while(window.size > 0 && arr[window.last] <= arr[idx]) do
      window.pop
    end
    window.push(idx)
  end
  result.push(arr[window.first])

  # slidig window of the rest
  window_size.upto(arr.size - 1).each do |idx|
    while(window.size > 0 && arr[window.last] <= arr[idx]) do
      window.pop
    end
    window.push(idx)
    window.shift if window.first <= idx - window_size
    result.push(arr[window.first])
  end
  return result
end

tc1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
win_size = 3
p find_max_sliding_window(tc1, win_size)
tc1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
win_size = 4
p find_max_sliding_window(tc1, win_size)