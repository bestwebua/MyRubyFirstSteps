#https://www.codewars.com/kata/strip-comments/ruby

def solution(input, markers)
  p input.scan(/[:upper:]/)
end

solution('textD', '["#", "!"]')