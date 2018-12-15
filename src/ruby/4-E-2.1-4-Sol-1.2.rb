# how can this be done in recursion
# lets see. the work done at each iteration is actually adding
# so lets see

def add_binary_array(a,b)
  n = a.length
  c = Array.new(n + 1)
  recursive_add(a,b,c,n - 1)
  return c
end

def recursive_add(a,b,c,index,carry = 0)
  sum = a[index] + b[index] + carry
  result[index + 1] = sum % 2
  carry = sum / 2
  if index > 0
    recursive_add(a,b,c,index - 1,carry)
  else
    c[0] = carry
  end
end

# another way it can be done is create the c array on first pass and pass it to the next iteration