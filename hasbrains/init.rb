require_relative 'item_container'
require_relative 'cart'
require_relative 'order'
require_relative 'item'
require_relative 'real_item'
require_relative 'virtual_item'

item1 = VirtualItem.new(:name => 'Virtual Item', :real_price => 100)
item2 = RealItem.new(:name => 'Real Item', :real_price => 200, :weight => 50)

cart = Cart.new
cart.add_item item1
cart.add_item item2

order = Order.new
order.add_item item1
order.add_item item2


puts order.count_valid_items