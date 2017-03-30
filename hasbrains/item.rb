class Item

  attr_reader :price, :weight
  attr_writer :price

  def initialize(options={})
  	@price = options[:price]
  	@weight = options[:weight]
  end

end