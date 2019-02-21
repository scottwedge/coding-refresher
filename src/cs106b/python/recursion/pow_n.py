def pow(n,m):
  if(m < 0):
    raise("m must be greater than or equal to 0")
  elif(m == 0):
    return 1
  elif(m % 2 == 0):
    # this is an optimization to reduce the number of calls
    x = pow(n, m/2)
    return (x * x)
  else:
    return n * pow(n, m - 1)
  
print(pow(2,3))
print(pow(4,3))
print(pow(10,5))
print(pow(1000,0))