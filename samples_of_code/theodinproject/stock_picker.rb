=begin
Project 2 - Stock Picker by Vladislav Trotsenko.

Implement a method #stock_picker that takes in an array of
stock prices, one for each hypothetical day. It should return
a pair of days representing the best day to buy and the best
day to sell. Days start at 0.

stock_picker([17,3,6,9,15,8,6,1,10])
=> [1,4]  # for a profit of $15 - $3 == $12

1. You need to buy before you can sell
2. Pay attention to edge cases like when the lowest day is the
last day or the highest day is the first day.
=end

def stock_picker(stocks)
  result = {}
    stocks.each_with_index do |buy, buy_index|
      stocks[buy_index+1..-1].each_with_index do |sell, sell_index|
        result[[buy_index, sell_index+buy_index+1]] = sell-buy
      end
    end
  result.max_by { |k,v| v }.first
end

stock_picker([17,3,6,9,15,8,6,1,10])
