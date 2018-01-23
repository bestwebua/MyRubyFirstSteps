=begin
Life without primes by Vladislav Trotsenko.

=end

require 'prime'

def solve(n)
  number, index = 1, -1
    loop do
      index+=1 unless number.prime? || !(number.to_s !~ /[2357]/)
        break if index == n
      number+=1
    end
  number
end

p solve(10)