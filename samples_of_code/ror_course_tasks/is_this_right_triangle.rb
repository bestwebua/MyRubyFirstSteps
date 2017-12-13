=begin
Is this right triangle? by Vladislav Trotsenko.

The program requests from the user 3 sides of the triangle and determines whether the triangle
is rectangular, using the Pythagorean theorem and displays the result on the screen.
=end

def is_this_right_triangle(a, b, c)
  [a, b, c].all? { |arg| arg.match(/\d/) } ? (a, b, c = a.to_i, b.to_i, c.to_i) : (abort 'Wrong input!')
    if a+b>c && a+c>b && b+c>a
      case
        when a.eql?(b) && a.eql?(c) then 'Equilateral'
        when a.eql?(b) || b.eql?(c) || c.eql?(a) then 'Isosceles'
        else 'Scalene'; end
    else 'Not a valid triangle'; end
end

puts 'A side size:'; a = gets.chomp
puts 'B side size:'; b = gets.chomp
puts 'C side size:'; c = gets.chomp

puts is_this_right_triangle(a, b, c)