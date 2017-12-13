=begin
The area of the triangle by Vladislav Trotsenko.

=end

def triangle_area(bottom, height)
  bottom, height = bottom.to_i, height.to_i
    area = 0.5*bottom*height
  "The area of the triangle is #{area.round}"
end

bottom, height = '', ''
puts 'Type bottom length (nums only):'; bottom = gets.chomp while bottom.match(/\D/) || bottom == ''
puts 'Type height of triangle (nums only):'; height = gets.chomp while height.match(/\D/) || height == ''
puts triangle_area(bottom, height)