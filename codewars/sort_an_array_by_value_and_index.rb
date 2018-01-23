=begin
Sort an array by value and index by Vladislav Trotsenko.

=end

def sort_by_value_and_index(arr)
  arr.sort_by.with_index(1) { |item, index| item*index }
end

sort_by_value_and_index([23, 2, 3, 4, 5])

=begin
#before refactoring code:
def sort_by_value_and_index(arr)
  arr.sort_by.with_index { |item, index| item*(index+1) }
end
=end