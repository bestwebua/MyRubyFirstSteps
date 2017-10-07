class Integer
  def times(&block)
    self.positive? ? block_given? ? (0...self).each { |i| yield(i) } : self : self
  end
end

10.times { |i| puts "I'm on iteration #{i}!" }

=begin
#Some versions

class Integer
  def times(&block)
    self.positive? ? (0...self).each { |i| if block_given? ? yield(i) } : self
  end
end

class Integer
  def times(&block)
    block_given? && self > 0 ? (0...self).each { |i| yield(i) } : self
  end
end
=end