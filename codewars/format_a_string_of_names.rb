=begin
Format a string of names like 'Bart, Lisa & Maggie' by Vladislav Trotsenko.

=end

def list(names)
  names.map(&:values).join(', ').reverse.sub(/,/, '& ').reverse
end

list([{name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'}])


=begin
def list(names)
  result, names = '', names.map(&:values).flatten
    names.each_with_index { |item, index| index == names.size-2 ? result << item + ' & ' : result << item + ', ' }
  result[0..-3]
end
=end