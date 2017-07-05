=begin
Alphabet wars - nuclear strike by Vladislav Trotsenko.

=end

def alphabetWar(battlefield)
  nuclear_strike, shelter_first, shelter_last, result = '#', '[', ']', []
    unless battlefield.include?(nuclear_strike)
      result = battlefield.tr('[]','')
    else
      battlefield = battlefield.scan(/(#+)|(\[\w+\])+/).join
        battlefield.each_char.with_index do |char, index|
          case char
            when shelter_first
              in_shelter, last_index = [], index
                in_shelter = battlefield[index..last_index] and last_index+=1 until in_shelter[-1] == shelter_last
              result << in_shelter[1...-1]
            when nuclear_strike then result << char
          end
        end

      p result
      stack << result.shift if

=begin
      
      stack, nuclear_wave = [], ''
      result.each do |i|
        i == nuclear_strike ? nuclear_wave << i : stack << nuclear_wave
          nuclear_wave = nuclear_wave.clear
      end
      puts 'Stack:'
      p stack
=end

      result.select!.with_index do |item, index|
        if result.include?(nuclear_strike)
          next_item, prev_item = result[index+1], result[index-1]
            case index
              when 0
                !item.include?(nuclear_strike) && next_item.count(nuclear_strike) < 2
              when result.size-1
                !item.include?(nuclear_strike) && prev_item.count(nuclear_strike) < 2
              else
                (!prev_item.include?(nuclear_strike) && !item.include?(nuclear_strike) && next_item.count(nuclear_strike) < 2) ||
                (prev_item.count(nuclear_strike) < 2 && !item.include?(nuclear_strike) && !next_item.include?(nuclear_strike))
            end
        end
      end
    result = result.join
    end
  result
end

#p alphabetWar('#m#[ee]#k[e]myl[hr]txb[qdl]and') #ehrqdl
p alphabetWar('###[ab]#[cd]') #ehrqdl

=begin
          when nuclear_strike
              next if result.last.nil? || result.last.include?(nuclear_strike)
                nuclear_wave, last_index = '', index
                  until nuclear_wave[-1] == shelter_first do
                    nuclear_wave = battlefield[index..last_index]
                      last_index+=1
                    break if index == battlefield.size-1
                  end
              nuclear_wave[-1] == nuclear_strike ? result << nuclear_wave : result << nuclear_wave[0...-1]
=end