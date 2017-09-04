#greedy algo using recursion
def give_coin(coins, n)
  if coins.include?(n)
    puts n
  else
  	max = coins.select { |i| i < n }.max
  	  puts max
  	give_coin(coins, n-max)
  end
end

#greedy algo using loop
def give_coin(coins, n)
  result = []
    until n==0
  	  max = coins.select { |i| i <= n }.max
  	    result << max
  	  n-=max
  	end
  result
end

p give_coin([1, 2, 5, 10, 25, 50, 100], 632)