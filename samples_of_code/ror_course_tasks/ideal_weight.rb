=begin
Ideal Weight by Vladislav Trotsenko.
	
The program requests the name and height and displays the ideal weight by the
formula "height" - 110, and then displays the result to the user on the screen
with a call by name. If the ideal weight is negative, then the line "Your weight
is already optimal" is displayed.
=end

def ideal_weight(name, height)
  i_weight = height.to_i-110
    i_weight.negative? ?
  'Your weight is already optimal' : "Hi, #{name}! Your ideal weight is #{i_weight} kg."
end

puts "What's your name?:"
name, height = gets.chomp, ''

puts "What's your height in cm? (only numbers are allowed):"
height = gets.chomp while height.match(/\D/) || height == ''

puts ideal_weight(name, height)