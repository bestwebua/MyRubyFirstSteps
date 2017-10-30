=begin
Identify Case by Vladislav Trotsenko.

=end
class String
  def kebabcase?
    arr = self.split('-')
    arr.size > 1 ? arr.all? { |i| i == i.downcase && !i.empty? && i !~ /_/ } : false
  end
  def snakecase?
    arr = self.split('_')
    arr.size > 1 ? arr.all? { |i| i == i.downcase && !i.empty? && i !~ /-/ } : false
  end
  def camelcase
    self.split(/(?=[A-Z])/).join
  end
  def camelcase?
    self !~ /-|_| / && self == self.camelcase
  end
end

def id(c_str)
  result = case
      when c_str.kebabcase? then 'kebab'
      when c_str.snakecase? then 'snake'
      when c_str.camelcase? then 'camel'
      else 'none'
    end
  result
end

p id('hello-world')

=begin
#Super refactoring code:
def id(c_str)
  case c_str
    when /\A(?:[a-z]|(?<=[a-z])-)+\z/     then "kebab"
    when /\A(?:[a-z]|(?<=[a-z])_)+\z/     then "snake"
    when /\A(?:[a-z]|(?<=[a-z])[A-Z])+\z/ then "camel"
    else "none"
  end
end
=end