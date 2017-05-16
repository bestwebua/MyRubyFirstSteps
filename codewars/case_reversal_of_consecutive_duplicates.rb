=begin
Case Reversal of Consecutive Duplicates by Vladislav Trotsenko.

=end

def reverse(str)
  str.gsub(/(.)\1+/, &:swapcase)
end

reverse('aabcaaa')


=begin
#Before refactoring 2:
def reverse(str)
	result, stack, step, str = [], [], 0, str.chars
  	str.each do |item|
  		stack << item if stack.empty? || stack.include?(item)
  		result << stack.clone and stack.clear and stack << item unless stack.include?(item)
  		result << stack.clone if step == str.size-1
  	step+=1; end
  result.map { |i| i.size > 1 ? i.map(&:swapcase) : i }.join
end

#Before refactoring 1:
def reverse(str)
	result, stack, step, str = [], [], 0, str.chars
  	str.each do |item|
  		stack << item if stack.empty? || stack.include?(item)
  			unless stack.include?(item)
	  			result << stack.clone and stack.clear
	  			stack << item
  			end
  		result << stack.clone if step == str.size-1
  		step+=1
  	end
  result.map { |i| i.size > 1 ? i.map(&:swapcase) : i }.join
end
=end