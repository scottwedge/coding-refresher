# here the assumption is the user will give "n"
# the function has to print all dice rolls possible for "n" dices

def print_all_dice_rolls(n):
  helper(n, "")

def helper(n, s):
  if n == 0:
    print(s)
  else:
    for i in range(1,7):
      helper(n - 1, s + str(i))

print_all_dice_rolls(3)