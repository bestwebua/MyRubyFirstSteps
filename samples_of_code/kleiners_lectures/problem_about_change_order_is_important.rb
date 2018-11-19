=begin
Задача о сдаче. Сколькими способами можно выдать сдачу,
при учете того, что порядок выдачи важен!
=end

def num_ways(denominations, amount)
  number_of_ways = [1, 1]
  (2..amount).each do |current_amount|
    current_number_of_ways = 0
    denominations.reverse_each do |current_coin_value|
      next if current_coin_value > current_amount
      current_number_of_ways += number_of_ways[current_amount - current_coin_value]
    end
    number_of_ways << current_number_of_ways
  end
  number_of_ways.last
end
