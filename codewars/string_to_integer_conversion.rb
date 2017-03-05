def my_parse_int(string)
  result = []
    string[/[^\d ]/] ? 'NaN' : arr = string.chars.map { |i| i.include?(' ') ? i : i.to_i }
      arr.each_with_index do |i, index|
        prev_i, next_i = arr[index-1], arr[index+1]
          result << i if (i.is_a?(Fixnum) && i >= 0 && (index == 0 || index == arr.size-1)) || i.is_a?(Fixnum) && i >=0 && prev_i.is_a?(Fixnum) && next_i.is_a?(Fixnum); end
    result.join.to_i
end

p my_parse_int('01 012')

=begin
#'01 01' => 101
def my_parse_int(string)
  string[/[^\d ]/] ? 'NaN' : string.gsub(/ /, '').to_i
end

#'01 01' => 1
def my_parse_int(string)
  result = []
    string[/[^\d ]/] ? 'NaN' : arr = string.chars.map { |i| i.include?(' ') ? i : i.to_i }
      arr.each_with_index do |i, index|
        prev_i, next_i = arr[index-1], arr[index+1]
          result << i if (i.is_a?(Fixnum) && i >= 0 && (index == 0 || index == arr.size-1)) || i.is_a?(Fixnum) && i >=0 && prev_i.is_a?(Fixnum) && next_i.is_a?(Fixnum); end
    result.join.to_i
end
=end