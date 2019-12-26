def rotate_clock_wise(arr)
  n = arr.size
  limit = n/2
  0.upto(limit) do |i|
    i.upto(n - 2 - i) do |j|
      tmp = row[i][j]
      row[i][j] = row[n - 1 - j][i]
      row[n - 1 - j][i] = row[n - 1 - i][n - 1 - j]
      row[n - 1 - i][n - 1 - j] = row[j][n - 1 - i]
      row[j][n - 1 - i] = tmp
    end
  end
end