=begin
Greatest common divisor, Euclidean algorithm by Vladislav Trotsenko.
=end

#My Ryby realisation of Euclidean algorithm
def gcd(a,b)
  a > b ? a%=b : b%=a while [a,b].all?(&:nonzero?); a+b
end

gcd(3,18)

#default Ruby method
3.gcd(18)

#Greatest common divisor for array
class Array
  def gcd
    self.all? { |item| item.is_a?(Integer) } ? self.reduce(self[0], :gcd) : nil
  end
end

[25,40,10].gcd