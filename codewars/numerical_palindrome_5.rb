=begin
Numerical Palindrome #5 by Vladislav Trotsenko.

=end

def palindrome(num)
  return 'Not valid' unless num.is_a?(Integer) && num.positive?
    num = num.to_s.chars
  num.size > 1 && !num.permutation(num.size).find { |i| i.join == i.join.reverse }.nil? ? true : false
end

p palindrome(5)




describe "Random tests" do
  Test.random_number.times do
    first, second, third = Test.random_token, Test.random_token, Test.random_token
      def validator(num)
  	  return 'Not valid' unless num.is_a?(Integer) && num.positive?
    	num = num.to_s.chars
  		num.size > 1 && !num.permutation(num.size).find { |i| i.join == i.join.reverse }.nil? ? true : false
	  end
    Test.assert_equals(palindrome(num), validator(num))
  end
end