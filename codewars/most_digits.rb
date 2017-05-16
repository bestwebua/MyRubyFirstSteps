=begin
Most digits by Vladislav Trotsenko.

=end

def find_longest(arr)
  arr.max_by { |i| i.to_s.size }
end

find_longest([1,2,66,10,77,20,7])

=begin
class Integer
	def digits
  	to_s.size
	end
end

def find_longest(arr)
  arr.group_by(&:digits).sort_by { |k,v| k }.max[1].first
end
=end