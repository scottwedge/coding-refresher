def binary_search(my_list, target):
  return helper(my_list, target, 0, len(my_list) - 1)

def helper(my_list, target, start, end):
  if(start <= end):
    mid = int(start + (end - start) / 2)
    if(my_list[mid] == target):
      return mid
    elif(target < my_list[mid]):
      return helper(my_list, target, start, mid - 1)
    else:
      return helper(my_list, target, mid + 1, end)
  else:
    return -1


l = [1,2,3,4,5,6,7,8,9,10]

for i in l:
  print(binary_search(l, i))

print(binary_search(l,100))