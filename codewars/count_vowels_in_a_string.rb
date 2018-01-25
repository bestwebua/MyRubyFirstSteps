=begin
Count vowels in a string by Vladislav Trotsenko.

Write a function count_vowels to count the number
of vowels in a given string.

Notes:
Return nil or None for non-string inputs.
Return 0 if the parameter is omitted.
=end

def count_vowels(str)
  str.is_a?(String) ? str.gsub(/[^aeiou]/i, '').size : nil
end

count_vowels('abaae')

=begin
#before refactoring code:
def count_vowels(str='')
  str.is_a?(String) ? str.scan(/[^aeiou]/i).size : nil
end
=end