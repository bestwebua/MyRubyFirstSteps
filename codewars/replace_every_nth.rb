=begin
Replace every nth by Vladislav Trotsenko.

=end

def replace_nth(text, n, old_value, new_value)
  return text if n < 1
    text.gsub(old_value).with_index do |item, index|
      (index+1)%n == 0 ? new_value : old_value
    end
end

p replace_nth("Vader said: No, I am your father!", 2, 'a', 'o')