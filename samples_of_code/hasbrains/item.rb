class Item

  @@discount = 0.1

  def self.discount
    Time.now.month == 4 ? @@discount + 0.2 : @@discount
  end

  attr_reader :name, :real_price
  attr_writer :real_price

  def initialize(options={})
    @name = options[:name]
    @real_price = options[:price]
  end

  def info
    yield(name)
    yield(price)
  end

  def price
    (@real_price - @real_price*self.class.discount) + tax
  end

  private
  def tax
    type_tax = self.class.is_a?(VirtualItem) ? 1 : 2
      cost_tax = @real_price > 5 ? @real_price*0.2 : @real_price*0.1
    cost_tax + type_tax
  end

end