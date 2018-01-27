=begin
Sum of first n naturals numbers by Vladislav Trotsenko.

Динамическое программирование лекция 1 часть 5 (новый курс - простая задача)
https://www.youtube.com/watch?v=b6_uoDsXZxs
=end

#Recursion solution
def sum_of_first_naturals(n)
  n == 1 ? n : sum_of_first_naturals(n-1)+n
end

#Enumerator solution
def sum_of_first_naturals(n)
  (1..n).inject(:+)
end

#Math solution. Correct solution that works with large numeric series
def sum_of_first_naturals(n)
  (1+n)*n/2
end

sum_of_first_naturals(100)