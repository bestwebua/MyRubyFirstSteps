=begin
From A to B by Vladislav Trtsenko.

Two integers A and B are given (each in a separate line). Print all numbers from
A to B inclusive, in ascending order, if A<B, or in decreasing order otherwise.
=end

def from_a_to_b(a,b)
  puts a
  a <= b ? a == b ? b : from_a_to_b(a+1,b) : b == a ? b : from_a_to_b(a-1,b)
end

from_a_to_b(1,5)

=begin
#Iterative method
def from_a_to_b(a,b)
  a < b ? (a..b).to_a : (b..a).to_a.reverse
end

#before refactoring code:
def from_a_to_b(a,b)
  puts a
    if a <= b
      a == b ? b : from_a_to_b(a+1,b)
    else
      b == a ? b : from_a_to_b(a-1,b)
    end
end
=end