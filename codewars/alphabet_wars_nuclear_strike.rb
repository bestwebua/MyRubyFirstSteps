=begin
Alphabet wars - nuclear strike by Vladislav Trotsenko.

=end

def alphabetWar(battlefield)
  nuclear_strike, shelter_first, shelter_last, result = '#', '[', ']', ''
    unless battlefield.include?(nuclear_strike)
      result = battlefield.tr('[]','')
    else
      battlefield.each_char.with_index do |char, index|
        next_char = battlefield[index+1]
          if next_char != nuclear_strike

      end
    end
  result
end

p alphabetWar('#abde[fgh]ijk')