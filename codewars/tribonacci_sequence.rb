=begin
Tribonacci Sequence by Vladislav Trotsenko.

=end

def tribonacci(signature, n)
  n < 4 ? signature = signature.first(n) : (n-3).times { signature << signature.last(3).inject(:+) }
  signature
end

tribonacci([300, 200, 100], 4)

=begin
Super refatoring code:
def tribonacci(signature,n)
  n.times.map{signature << signature.inject(:+); signature.shift}
end

Before refactoring code:
def tribonacci(signature, n)
  if n < 4
  	signature = signature.first(n)
  else
  	(n-3).times { signature << signature.last(3).inject(:+) }
  end
  signature
end
=end