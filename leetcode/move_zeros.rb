=begin
Move Zeroes by Vladislav Trotsenko.

Given an array nums, write a function to move all 0's to the end of it while
maintaining the relative order of the non-zero elements.

For example, given nums = [0, 1, 0, 3, 12], after calling your function, nums should be
[1, 3, 12, 0, 0].

Note:
You must do this in-place without making a copy of the array.
Minimize the total number of operations.
=end

def move_zeroes(*nums)
    nums = nums.select { |x| x!=0 } + nums.select { |x| x==0 }
end

move_zeroes(0, 1, 0, 3, 12)

=begin
Old code before refactoring:
def move_zeroes(nums)
	nums = nums.sort!
	nums.each do |i|
		if i == 0
			nums.shift
			nums.push i
		end
	end
end
=end