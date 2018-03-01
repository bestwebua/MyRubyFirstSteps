=begin
Cipher of Caesar by Vladislav Trotsenko.

caesar_cipher('What a string!', 5)
=> "Bmfy f xywnsl!"
=end


def caesar_cipher(str, shift)
  return str if shift.zero?
  dict = ('a'..'z').to_a.map { |item| item << item.upcase }
    shift_dict = dict.map.with_index do |char, index|
      char = index+shift > dict.size-1 ? dict[index+shift-dict.size] : dict[index+shift]
    end
  str.tr(dict.join, shift_dict.join)
end


p caesar_cipher('I should have known that you would have a perfect answer for me!!!', 1)
