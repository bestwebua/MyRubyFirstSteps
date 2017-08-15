module ItemConteiner

  def add_item(item)
    @items << item
  end

  def remove_item
    @items.pop
  end

  def validate
    @items.any? { |i| puts 'Item(s) has no price' if i.real_price.nil? }
  end

  def delete_invalid_items
    @items.delete_if { |i| i.real_price.nil? }
  end

end