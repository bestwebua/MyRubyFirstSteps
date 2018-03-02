=begin
Second Variation on Caesar Cipher by Vladislav Trotsenko.


=end

def encode_str(u, n)
  dict = ('a'..'z').map { |i| i << i.upcase }
    shift_dict = dict.rotate(n)
  #u.tr(dict.join, shift_dict.join).split
  p u.size/4
end

def decode(arr)

end

p encode_str('I should have known that you would have a perfect answer for me!!!', 1)
