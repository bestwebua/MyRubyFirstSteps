=begin
Move Zeroes by Vladislav Trotsenko.

Given an array nums, write a function to move all 0's to the end of it while maintaining the
relative order of the non-zero elements.

For example, given nums = [0, 1, 0, 3, 12], after calling your function, nums should be [1, 3, 12, 0, 0].

Note:
You must do this in-place without making a copy of the array.
Minimize the total number of operations.
=end

def move_zeroes(*nums)
    size = nums.size
    count = 0

#WithoutZeros sort loop
    size.times do |i|
    	if nums[i] != 0
            nums[count] = nums[i]
            count += 1
        end
    end

#FillWithZeroes loop
    while count < size
        nums[count] = 0
        count += 1
    end
    
	nums
end

move_zeroes(0, 0, 4, 12, 17, 99, 34, 101, 0, 1)