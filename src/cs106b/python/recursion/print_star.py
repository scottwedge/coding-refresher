def print_star(n):
  """
    prints start n times
  """
  if(n <= 0):
    return
  else:
    print("*")
    print_star(n-1)