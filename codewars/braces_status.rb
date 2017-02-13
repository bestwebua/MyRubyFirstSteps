=begin
Braces status by Vladislav Trotsenko.

Write a function that will check the braces status.

For instance:
([[some](){text}here]...) => true
{([])} => true
()[]{}() => true
(...[]...{(..())}[abc]()) => true
1239(df){ => false
[()]) => false
=end

def braces_status(string)
  braces, stack = {'('=>')', '['=>']', '{'=>'}'}, []
  string.each_char do |brace| 
    case brace
      when '(', '[', '{' then stack << brace
      when ')', ']', '}' then return false if stack.pop != braces.key(brace)
    end
  end
  stack.empty?
end

braces_status('[[[[')

=begin
Super refactoring code #1:
def braces_status(string)
  lambda { |n| n!=string ? braces_status(n) : n=="" }.(string.gsub(/[^\{\}\[\](\)]/,"").gsub(/(\(\))|(\[\])|(\{\})/,""))
end

Before refactoring code:
def braces_status(string)
  braces, open_braces, status = {'('=>')', '['=>']', '{'=>'}'}, [], true
    string = string.chars.select { |brace| braces.has_key?(brace) || braces.has_value?(brace) }
    if string.size.even?
      string.each do |brace|
      if braces.has_value?(brace) && open_braces.empty?
        status = false
      break
          elsif braces.has_key?(brace)
      open_braces << brace
      else
      open_braces.pop if braces.key(brace) == open_braces.last
      end
    end
  else status = false; end
  status == true && open_braces.empty? ? true : false
end
=end