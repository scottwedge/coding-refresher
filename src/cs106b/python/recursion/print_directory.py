import os

def print_deep_dir(path):
  helper(path,0)

def helper(path, level):
  my_file_list = os.listdir(path)
  for file in my_file_list:
    print("\t" * level + file)
    file_path = path + "/" + file
    if(os.path.isdir(file_path)):
      helper(path + "/" + file, level + 1)
      
print_deep_dir("/home/bala/base/books")