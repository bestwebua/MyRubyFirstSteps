=begin
Making Change: Part 2

=end

class Currency
  attr_reader :denominations

  def initialize(denominations)
    @denominations = denominations
  end

  def num_ways(amount)

  end

  def min_change(amount)
    result = 0
    denominations.each do |coin|
      total_coins = amount / coin
      next if total_coins.zero?

      result += total_coins
      amount %= coin
    end
    result
  end
end
