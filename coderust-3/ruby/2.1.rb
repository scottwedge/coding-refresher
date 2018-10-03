def find_max_sliding_window( arr, window_size )
  result = []
  max = arr.first
  0.upto(arr.size - window_size).each do |idx|
    idx.upto(idx + window_size - 1).each do |cur|
      max = arr[cur] if arr[cur] > max
    end
    result.push max
  end
  return result
end
