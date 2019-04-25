def reverse(s):
  """
    reverses the string s
  """
  return reverse_helper(s, 0)

def reverse_helper(s, i):
  if(len(s) == i):
    return ""
  else:
    return reverse_helper(s, i+1) + s[i]