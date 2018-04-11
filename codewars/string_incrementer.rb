=begin
String incrementer by Vladislav Trotsenko.

=end

def increment_string(input)
  pattern = /(.*\D)(\d+)?/
    if !input[/\d+/].nil? && input.size == input[/\d+/].size
      input.next
    else
      input[/#{pattern}/,2].nil? ? input << '1' : input[/#{pattern}/,1] + input[/#{pattern}/,2].next
    end
end

increment_string(' 1')