=begin
Project 2 - Assistant to bid by Vladislav Trotsenko.

stock_picker([17,3,6,9,15,8,6,1,10])
=> [1,4]  # for a profit of $15 - $3 == $12
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

p stock_picker([17,3,6,9,15,8,6,1,10])
