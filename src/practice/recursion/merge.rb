def merge(a, b, ai = 0,bi = 0, res = [])
  return res + b[bi..b.size] if ai >= a.size
  return res + a[ai..a.size] if bi >= b.size
  if a[ai] < b[bi]
    res << a[ai]
    ai += 1
  else
    res << b[bi]
    bi += 1
  end
  return merge(a, b, ai, bi, res)
end

merge([1,3,5], [2,4,6])