def print_spiral(arr)
  row_start = 0
  row_end = arr.size - 1
  col_start = 0
  col_end = arr[0].size - 1

  while(row_start <= row_end && col_start <= col_end)

    col_start.upto(col_end) do |i|
      arr[row_start][i]
    end
    row_start += 1

    row_start.upto(row_end) do |i|
      arr[i][col_end]
    end
    col_end -= 1

    if(row_start <= row_end)
      col_end.downto(col_begin) do |i|
        arr[row_end][i]
      end
    end

    if(col_start <= col_end)
      row_end.downto(row_start) do |i|
        arr[i][col_start]
      end
    end
    
  end
end