# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}

class Pair
  attr_accessor :num, :count
  include Comparable
  def initialize(num, count)
    @num = num
    @count = count
  end
  def <=>(b)
    self.count <=> b.count
  end
end

class PQ
  
  def initialize()
    @store = []
  end
  
  def push(element)
    store.push(element)
    bubble_up(store.size - 1)
  end
  
  def pop
    to_return = store[0]
    return to_return if store.size == 1
    store[0] = store.last
    store.pop
    bubble_down(0)
    return to_return
  end
  
  private
  attr_accessor :store
  
  def bubble_up(i)
    parent = ((i - 1) / 2).to_i
    return if parent < 0
    if store[i] > store[parent]
      swap(parent, i)
      bubble_up(parent)
    end
  end
  
  def bubble_down(i)
    left = (i * 2) + 1
    return if left >= store.size
    largest = left
    right = left + 1
    if right < store.size && store[right] > store[left]
      largest = right
    end
    if store[largest] > store[i]
      swap(largest, i)
      bubble_down(largest)
    end
  end
    
  def swap(i,j)
    store[i], store[j] = store[j], store[i]
  end
end
  
def top_k_frequent(nums, k)
  counts = nums.reduce( Hash.new(0) ) do |hash, num|
      hash[num] += 1
      hash
  end
  
  pq = PQ.new
  counts.each do |num, count|
    p = Pair.new(num, count)
    pq.push(p)
  end
  
  result = []
  
  1.upto(k) do |i|
    result.push(pq.pop.num)
  end
  
  return result
end