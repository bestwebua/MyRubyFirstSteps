#Factorival method by Vladislav Trotsenko.

#Iterative method
def factorial(n)
  (1..n).inject(:*)
end

#Recursive method
def factorial(n)
  n > 1 ? n*factorial(n-1) : 1
end

factorial(5)