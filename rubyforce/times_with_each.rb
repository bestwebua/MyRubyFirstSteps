class Integer
  def times(&block)
    block_given? && self > 0 ? (1..self).each { |i| yield(i) } : self
  end
end

5.times { |i| puts "I'm on iteration #{i}!" }