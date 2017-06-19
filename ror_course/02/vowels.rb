=begin
Vowels Hash by Vladislav Trotsenko.

Fill in the hash with vowels, where the value is the ordinal number
of the letter in the alphabet (a - 1).
=end

('a'..'z').to_a.map.with_index { |item, index| [item, index+1] }.select { |i| !!(i[0].match(/[aeoui]/)) }.to_h