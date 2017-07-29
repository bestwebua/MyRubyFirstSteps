=begin
Convert PascalCase string into snake_case by Vladislav Trotsenko.

Complete the function/method so that it takes CamelCase string and returns the string
in snake_case notation. Lowercase characters can be numbers. If method gets number,
it should return string.

to_underscore('TestController') #returns test_controller
to_underscore('MoviesAndBooks') #returns movies_and_books
to_underscore('App7Test')       #returns app7_test
to_underscore(1)                #returns "1"
=end

def to_underscore(string)
  string.to_s.gsub(/(?<=.)(?=[A-Z])/, '_').downcase
end

p to_underscore('Am7Days')

=begin
#Before refactoring code:
def to_underscore(string)
  string.is_a?(Integer) ? string.to_s : string.chars.map { |i| i == i.upcase && i[/\D/] ? i = '_' + i.downcase : i }.join[1..-1]
end
=end