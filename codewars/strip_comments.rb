#https://www.codewars.com/kata/strip-comments/ruby

def solution(input, markers)
  p input.gsub(/#{markers}[\w]*/, '')
end
solution("apples, pears # and bananas\ngrapes\nbananas !apples", '["!"]')