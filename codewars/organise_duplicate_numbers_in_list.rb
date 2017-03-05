=begin
Organise duplicate numbers in list by Vladislav Trotsenko.

Sam is an avid collector of numbers. Every time he finds a new number he throws
it on the top of his number-pile. Help Sam organise his collection so he can take
it to the International Number Collectors Conference in Cologne.

Given an array of numbers, your function should return an array of arrays,
where each subarray contains all the duplicates of a particular number.
Subarrays should be in the same order as the first occurence of the numbe
they contain:

group([3, 2, 6, 2, 1, 3])
>>> [[3, 3], [2, 2], [6], [1]]
=end

def group(arr)
  arr.group_by(&:itself).values
end

group([3, 2, 6, 2, 1, 3])