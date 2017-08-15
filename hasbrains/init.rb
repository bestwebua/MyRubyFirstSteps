require_relative 'item_conteiner.rb'
require_relative 'cart.rb'
require_relative 'order.rb'
require_relative 'item.rb'
require_relative 'virtual_item.rb'
require_relative 'real_item.rb'


item1 = VirtualItem.new(:name => 'Software', :weight => 100)
item2 = RealItem.new(:name => 'Car', :price => 100, :weight => 100)
item3 = RealItem.new(:name => 'Pillow', :price => 10, :weight => 3)
cart = Cart.new



[item1, item2, item3].each { |i| cart.add_item(i) }
p cart.items.size


order = Order.new
[item1, item2].each { |i| order.add_item(i) }
p order.items.size