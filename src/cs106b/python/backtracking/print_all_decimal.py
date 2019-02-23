def print_all_decimal(n):
  helper(n, "")

def helper(n, s):
  if(len(s) == n):
    print(s)
  else:
    for i in range(10):
      helper(n, s + str(i))

print_all_decimal(3)