def print_file_in_reverse(file_path):
  with open(file_path) as f:
    lines = f.readlines()
  helper(lines, 0)

def helper(lines, i):
  if(i < len(lines)):
    helper(lines, i + 1)
    print(lines[i].rstrip("\n"))

print_file_in_reverse("input.txt")