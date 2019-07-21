def print_table(n, i)
  return if(i > 20)
  puts "#{i} * #{n} = #{n*i}"
  print_table(n, i + 1)
end

print_table(5, 1)