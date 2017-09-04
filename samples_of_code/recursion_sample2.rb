=begin
Append recursive method by Vladislav Trotsenko.
=end
def append (arr, n)
  return arr if n<0
    arr << n
  append(arr, n-1)
end

p append([], 2)



def reverse_append (arr, n)
  return arr if n<0
   p reverse_append(arr, n-1)
  p arr << n
end

p reverse_append([], 5)