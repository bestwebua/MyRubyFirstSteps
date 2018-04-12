class BookInStock
  attr_reader :title, :author, :price

  def initialize(title, author, price)
    @title, @author, @price = title, author, Float(price)
  end

  def self.statistics
    "Count of add method call: #{ObjectSpace.each_object(self).count}"
  end
end

5.times{ BookInStock.new('The Great Gatsby', 'F. Scott Fitzgerald', 8.99) }

BookInStock.statistics # => Count of books: 5