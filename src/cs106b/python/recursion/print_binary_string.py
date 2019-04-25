def print_binary(n):
  if(n <= 1):
    return str(n)
  else:
    return print_binary(int(n/2)) + str(n%2)

print(print_binary(4))
print(print_binary(5))
print(print_binary(6))
print(print_binary(7))