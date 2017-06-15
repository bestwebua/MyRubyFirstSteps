#https://www.codewars.com/kata/strip-comments/ruby

def solution(input, markers)
  markers = markers.map { |i| i.insert(0,"\\") }.join('|')
    puts "#{markers}"
  input.gsub(/ ?(\#|\!)(.)+/, '')
end

p solution("apples, pears # and bananas\ngrapes\nbananas !apples", ['#', '!'])