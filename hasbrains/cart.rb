class Cart

  attr_reader :items

  include ItemConteiner

  def initialize
    @items = []
  end

end