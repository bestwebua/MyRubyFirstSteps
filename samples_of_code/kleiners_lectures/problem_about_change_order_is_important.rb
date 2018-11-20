=begin
Задача о сдаче. Сколькими способами можно выдать сдачу,
при учете того, что порядок выдачи важен!
=end

def num_ways(denominations, amount)
  number_of_ways = [denominations.min] * 2
  (2..amount).each do |current_amount|
    current_number_of_ways = 0
    denominations.sort.each do |current_coin_value|
      next if current_coin_value > current_amount
      current_number_of_ways += number_of_ways[current_amount - current_coin_value]
    end
    number_of_ways << current_number_of_ways
  end
  number_of_ways.last
end

p num_ways([5, 3, 1], 5)
