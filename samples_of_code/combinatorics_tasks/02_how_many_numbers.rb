=begin
How many numbers without duplicates of two numbers in a row by Vladislav Trotsenko.

Math solution: 9^0+9^1+9^2+9^3+9^4+9^5+9^6
=end

def total_numbers_except_duplicates(min, max)
  (min.to_s..max.to_s).reject { |n| n[/(\d)\1+/] }.size
end

total_numbers_except_duplicates(0, 999999)