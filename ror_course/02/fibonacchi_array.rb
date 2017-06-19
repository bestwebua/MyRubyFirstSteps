=begin
Fibonacchi Array by Vladislav Trotsenko.

Fill the array with Fibonacci numbers up to 100.
=end
arr = [0, 1]
  arr << arr.last(2).inject(:+) while arr.last(2).inject(:+) <= 100
arr