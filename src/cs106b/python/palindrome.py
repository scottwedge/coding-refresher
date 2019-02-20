def is_palindrome(s):
  return helper(s, 0, len(s) - 1)

def helper(s, start, end):
  if(start < end):
    if (s[start] == s[end]):
      return helper(s, start + 1, end - 1)
    else:
      return False
  else:
    return True