=begin
How many times range of numbers contains a certain number by Vladislav Trotsenko.
=end

def how_times_it_contain?(first, second, number)
  range = [first, second]
  (range.min..range.max).map(&:to_s).count { |i| i.include?(number.to_s) }
end

how_times_it_contain?(1, 10000, 9)
how_times_it_contain?(120, 100, 6)