=begin
From 1 to n by Vladislav Trotsenko.
Given a natural number n. Print all numbers from 1 to n.
=end

#Recursive method
def from_one_to(n)
  puts n
    n > 1 ? from_one_to(n-1) : 1
end

#Iterative method
def from_one_to(n)
  (1..n).reverse_each { |i| puts i }
end

from_one_to(5)