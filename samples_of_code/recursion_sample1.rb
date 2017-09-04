=begin
Write the func that will return sum by this sequence: ( (((1) + 2 ) + 3 ) + 4 )

For the instance:
sum_upto(1) => 1
sum_upto(2) => 3
sum_upto(3) => 6
sum_upto(4) => 10
=end

def sum_upto(n)
  n == 1 ? n : sum_upto(n-1)+n
end

sum_upto(10)