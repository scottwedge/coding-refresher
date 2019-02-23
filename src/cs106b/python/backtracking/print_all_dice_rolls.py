# here the assumption is the user will give "n"
# the function has to print all dice rolls possible for "n" dices

def print_all_dice_rolls(n):
  result_set = []
  helper(n, [], result_set)
  return result_set

def helper(n, roll_set, result_set):
  if n == 0:
    result_set.append(list(roll_set))
  else:
    for i in range(1,7):
      roll_set.append(i)
      helper(n - 1, roll_set, result_set)
      roll_set.pop()

print(print_all_dice_rolls(3))