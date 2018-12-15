# Add two n-bit binary integers stored in arrays A and B. Output in n + 1 length array C
# there are two arrays of n with only zeroes and ones.
# there are only 4 possible for this addition.
# 0 , 1, 2, 3. in case of 0 and 1 there are no problems
# but in case of 2; result = 0 and carry = 1; 2%2 = 0; 2/2 = 1
# incase of 3 result = 1 and carry = 1. 3%2 = 1; 3/2 = 1

def add_binary_array(a,b)
  n = a.length
  result = Array.new(n + 1)
  carry = 0
  (n-1).downto(0) do |idx|
    sum = a[idx] + b[idx] + carry
    result[idx + 1] = sum % 2
    carry = sum / 2
   end
   result[0] = carry
   result
end