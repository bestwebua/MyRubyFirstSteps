=begin
Shopping cart by Vladislav Trotsenko.

The user enters the name of the product, the price per unit and the number of purchased goods
(can be a non-integer number). The user can enter an arbitrary quantity of goods until he enters the 'stop'
as the name of the product. On the basis of the entered data you need:

Fill and display a hash, the keys of which are the names of the goods, and the value - the embedded hash
containing the price per unit of goods and the number of purchased goods. Also print the total amount for
each item.

Calculate and display the total amount of all purchases in the 'basket'.
=end

def get_info
  unless @shopping_cart.empty?
    @shopping_cart.each do |item, item_data|
      price, amount = item_data.keys.first, item_data.values.first
        total_item_price = price*amount
          @total_price+=total_item_price
        puts "\"#{item}\", #{amount} pcs, #{price}$ per 1, Amount: #{total_item_price}$"
      end
    "The sum of all your purchases is: #{@total_price}$"
  else
    'Nothing to do. Shopping cart is empty!'
  end
end

def get_users_data
@shopping_cart, product_name, @total_price = {}, '', 0
  until product_name == 'stop' do
    product_name = product_price = amount = ''
      puts "Type product name or 'stop' if your shopping cart is full.\nIf product exists in shopcart, it will be rewritten."
        product_name = gets.chomp while product_name.empty?
          break if product_name == 'stop'
            puts "Product price in USD (it's may be float number):"
          product_price = gets.chomp until product_price.match(/\A(\d+\.)?\d+\z/)
        puts 'Amount (whole number only):'
      amount = gets.chomp until amount.match(/\A\d+\z/)
    @shopping_cart[product_name.capitalize] = {product_price.to_i => amount.to_i}
  end
end

get_users_data
puts get_info