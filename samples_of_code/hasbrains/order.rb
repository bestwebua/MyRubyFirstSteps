class Order

  attr_reader :items

  include ItemConteiner

  def initialize
    @items = []
  end


  def place
    #code here...
  end

end