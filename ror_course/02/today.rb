=begin
What is day of the year today? by Vladislav Trotsenko.

Three numbers are given, which denote the number, month, year (we ask the user).
Find the ordinal number of the date, starting counting from the beginning of the year.
Consider that a year can be a leap year.
=end

require 'date'
def day_in_year(year, month, day)
  Date.valid_date?(year, month, day) ?
  "It's #{Date.new(year, month, day).yday} day in a year." : 'Invalid date, please try again!'
end

year = month = day = ''
  puts 'Year:'
    year = gets.chomp until year.match(/\A([1-9][0-9]{3})\z/)
      puts 'Month:'
        month = gets.chomp until month.match(/\A(0?[1-9]|1[0-2])\z/)
      puts 'Day:'
    day = gets.chomp until day.match(/\A(0?[1-9]|[1-2][1-9]|3[0-1])\z/)
  date = [year, month, day].map(&:to_i)
year, month, day = date[0], date[1], date[2]

puts day_in_year(year, month, day)