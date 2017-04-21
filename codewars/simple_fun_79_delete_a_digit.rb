=begin
Simple Fun #79: Delete a Digit by Vladislav Trotsenko.

=end

def delete_digit(n)
  n = n.to_s.chars.map(&:to_i)
    n.delete_if { |i| i.zero? } and n.push(0) if n.include?(0)
end

p delete_digit(1001)