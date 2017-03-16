def next_bigger(n)
  arr = n.to_s.chars.reverse
end

p next_bigger(2017)


=begin



1234567890
1234567908

def next_bigger(n)
  size = n.to_s.size-2
    last, new_num = n.to_s.chars.map(&:to_i).last(2).join.to_i, n.to_s[0...size]
    last_reverse = last.to_s.reverse.to_i
  last_reverse > last ? (new_num << last_reverse.to_s).to_i : -1
end
=end