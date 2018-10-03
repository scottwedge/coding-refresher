def find_least_common_number(a, b, c)
  i = 0
  j = 0
  k = 0

  while (i < a.length && j < b.length && k < c.length)
    # Found the smallest common number
    if (a[i] == b[j] && b[j] == c[k])
      return a[i]
    end

    # Let's advance the iterator
    # for the smallest value.

    if (a[i] <= b[j] && a[i] <= c[k])
      i+=1
    elsif (b[j] <= a[i] && b[j] <= c[k])
      j+=1
    elsif (c[k] <= a[i] && c[k] <= b[j])
      k+=1
    end
  end

  return -1
end

v1 = [1, 6, 10, 14, 50]
v2 = [-1, 6, 7, 8, 50]
v3 = [0, 6, 7, 10, 25, 30, 50]
result = find_least_common_number(v1,v2,v3)
puts "Least Common Number : " + result.to_s