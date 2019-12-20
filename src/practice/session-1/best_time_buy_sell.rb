=begin
Say you have an array for which the ith element is the price of a given stock on day i.

If you were only permitted to complete at most one transaction (i.e., buy one and sell one share of the stock), design an algorithm to find the maximum profit.

Note that you cannot sell a stock before you buy one.

Example 1:

Input: [7,1,5,3,6,4]
Output: 5
Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
             Not 7-1 = 6, as selling price needs to be larger than buying price.
Example 2:

Input: [7,6,4,3,1]
Output: 0
Explanation: In this case, no transaction is done, i.e. max profit = 0.
=end

# @param {Integer[]} prices
# @return {Integer}
# O(n^2)
def max_profit(prices)
  max = 0
  prices.each_with_index do |p, i|
    buy = p
    sell = i == prices.length - 1 ? 0 : prices[i+1..-1].max
    profit = sell - buy
    if profit > max
      max = profit
    end
  end
  return max
end


# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  max = 0
  min_buy = prices[0]
  (1..prices.length - 1).each do |i|
    min_buy = prices[i] if prices[i] < min_buy
    profit = prices[i] - min_buy
    max = profit if profit > max
  end
  return max
end

=begin
def product_except_self(nums)
    n = nums.size
    out = [1] * n
    left = right = 1
    1.upto(n-1) { |i|
        out[i] *= left *= nums[i-1]
        out[~i] *= right *= nums[-i]
    }
    out
end
=end