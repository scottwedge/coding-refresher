# @param {Integer} a
# @param {Integer} b
# @return {Integer}
def get_sum(a, b)
  sum = 0
  a = Array(a).pack('l').unpack('l').first
  b = Array(b).pack('l').unpack('l').first
  while(b != 0)
    sum = a ^ b
    b = (a & b) << 1
    a = sum 
    a = Array(a).pack('l').unpack('l').first
    b = Array(b).pack('l').unpack('l').first
  end
  return sum
end