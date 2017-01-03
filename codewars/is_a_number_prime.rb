=begin
Is a number prime? by Vladislav Trotsenko

Define a function isPrime that takes one integer argument and returns true or false
depending on if the integer is a prime.

Per Wikipedia, a prime number (or a prime) is a natural number greater than 1 that
has no positive divisors other than 1 and itself.

isPrime(5) => true
=end


def isPrime(num)
  (num.is_a?(Fixnum || Bignum) && (num > 1) && (num%2 == 1)) ? true : false
end

isPrime(11111)