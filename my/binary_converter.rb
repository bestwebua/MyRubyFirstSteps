=begin
Binary Converter method by Vladislav Trotsenko.
=end

class Integer
  def to_dec
    if is_a?(Integer)
        abort "It is not binary number!" unless !to_s.match(/[^01]/)
      to_s.chars.map(&:to_i).inject { |memo, item| memo*2 + item }
    else
      "It is not a number!"
    end
  end
end

10011011.to_dec