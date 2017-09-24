class MyArray
  attr_reader :array
  
  def initialize
    @array = []
  end
  
  def push(item)
    array.push(item)
  end
  
  def each(&block)
    i = 0
      while i < array.size
        block.call(array[i])
        i+=1
      end
    array
  end
end

test = MyArray.new
(1..10).each { |i| test.push(i) }
test.each { |i| puts i }
