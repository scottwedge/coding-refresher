def print_all_binary_strings(n):
  helper(n, "")
  print("-------------------")

def helper(n, s, lvl = 0):
  space = ("   " * lvl) + s
  print(space)
  if(len(s) == n):
    print(s)
  else:
    helper(n, s + "0", lvl + 1)
    helper(n, s + "1", lvl + 1)


print_all_binary_strings(1)
print_all_binary_strings(2)
print_all_binary_strings(3)
print_all_binary_strings(4)