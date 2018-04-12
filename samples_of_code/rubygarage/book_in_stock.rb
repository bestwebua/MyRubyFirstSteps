class BookInStock
  attr_reader :title, :author, :price

  @count = 0

  def initialize(title, author, price)
    @title, @author, @price = title, author, Float(price)
    self.class.add
    # @count += 1  NoMethodError: undefined method '+' for nil:NilClass
  end

  def self.add
    @count += 1
  end

  def self.statistics
    'Count of add method call: ' + @count.to_s
  end
end

5.times { BookInStock.new('The Great Gatsby', 'F. Scott Fitzgerald', 8.99) }

BookInStock.statistics # => Count of books: 5