=begin
Need to refactor this code!

$VERBOSE = nil    # We'll explain this at the end of the lesson.
require 'prime'   # This is a module. We'll cover these soon!

def first_n_primes(n)

  unless n.is_a? Integer
    return "n must be an integer."
  end

  if n <= 0
    return "n must be greater than 0."
  end
  
  prime_array = [] if prime_array.nil?
  
  prime = Prime.new
  for num in (1..n)
    prime_array.push(prime.next)
  end
  return prime_array
end

first_n_primes(10)
=end

require 'prime'
def first_n_primes(n)
  puts "n must be an integer or greater than 0" if (n <= 0) && !(n.is_a?(Integer))
  prime = Prime.instance
  prime.first n
end

first_n_primes(10)