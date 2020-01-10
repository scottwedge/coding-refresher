=begin
Reverse bits of a given 32 bits unsigned integer.

 

Example 1:

Input: 00000010100101000001111010011100
Output: 00111001011110000010100101000000
Explanation: The input binary string 00000010100101000001111010011100 represents the unsigned integer 43261596, so return 964176192 which its binary representation is 00111001011110000010100101000000.
Example 2:

Input: 11111111111111111111111111111101
Output: 10111111111111111111111111111111
Explanation: The input binary string 11111111111111111111111111111101 represents the unsigned integer 4294967293, so return 3221225471 which its binary representation is 10111111111111111111111111111111.
 

Note:

Note that in some languages such as Java, there is no unsigned integer type. In this case, both input and output will be given as signed integer type and should not affect your implementation, as the internal binary representation of the integer is the same whether it is signed or unsigned.
In Java, the compiler represents the signed integers using 2's complement notation. Therefore, in Example 2 above the input represents the signed integer -3 and the output represents the signed integer -1073741825.
=end

# @param {Integer} n, a positive integer
# @return {Integer}
def reverse_bits(n)
  result = 0
  0.upto(31) do |i|
    result <<= 1 # make space for adding the cur bit imagine it like array
    result += n & 1
    n >>= 1 # pop the processed bit
  end
  return result
end

=begin
# @param {Integer} n, a positive integer
# @return {Integer}

def reverse_bits(n)
  sum = 0
  31.downto(0).each do |i|
    next if n & 1 << i == 0
    sum = sum += 2 ** (31 - i)
  end
  sum
end

def reverse_bits(n)
    output = 0
    
    0.upto(31).each do |index|
        output = output | (1 << (31-index)) unless ((1 << index) & n).zero?
    end
    output
end


=end