#CamelCase method for strings by Vladislav Trotsenko.

class String
  def camelcase
    self.split.map(&:capitalize).join
  end
end

p 'camel case method'.camelcase