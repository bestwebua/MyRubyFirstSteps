=begin
Array from 10 to 100 by Vladislav Trotsenko.

Fill an array with numbers from 10 to 100 in increments of 5.
=end

(10..100).select { |i| i%5 == 0 }.to_a