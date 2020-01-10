=begin
Write a function that takes an unsigned integer and return the number of '1' bits it has (also known as the Hamming weight).

Example 1:

Input: 00000000000000000000000000001011
Output: 3
Explanation: The input binary string 00000000000000000000000000001011 has a total of three '1' bits.
Example 2:

Input: 00000000000000000000000010000000
Output: 1
Explanation: The input binary string 00000000000000000000000010000000 has a total of one '1' bit.
Example 3:

Input: 11111111111111111111111111111101
Output: 31
Explanation: The input binary string 11111111111111111111111111111101 has a total of thirty one '1' bits.
=end

def hamming_weight(n)
  count = 0
  0.upto(32) do |i|
    mask = 1 << i
    count = (n & mask) == 0 ? count : count + 1
  end
  return count
end

=begin
def hamming_weight(n)
  count = 0
  while n > 0
    count += n & 1
    n >> 1
  end
  return count
end

def hamming_weight(n)
  count = 0
  while n > 0
    count += n % 2
    n = n / 2
  end
  return count
end
=end  