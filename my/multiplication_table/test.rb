class Number
  def self.new
    rand(2..9)
  end
end

class Test
  def initialize
    @num1, @num2 = Number.new, Number.new
  end
end