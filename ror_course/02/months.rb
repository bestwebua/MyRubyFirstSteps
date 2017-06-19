=begin
Months Selector by Vladislav Trotsenko.

Make a hash that contains months and the number of days in a month. In the cycle output
those months, for which the number of days is exactly 30 
=end

require 'date'
def months_selector(total_days)
  month, months = Date.new(2017,1,1), {}
    12.times do
      months[month.strftime('%B')] = month.next_month.prev_day.day
      month = month.next_month
    end
  months.select { |k,v| v == total_days.to_i }.keys
end

puts "Select months by total days.\nEnter a number from 28 to 31:"
total_days = ''
  total_days = gets.chomp until total_days.match(/\A(28|3[0-1])\z/)
puts months_selector(total_days)