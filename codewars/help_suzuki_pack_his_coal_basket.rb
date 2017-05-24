=begin
Help Suzuki pack his coal basket! by Vladislav Trotsenko.

=end
def pack_basket(basket,pile)
  pile = pile.scan(/\d+/).map(&:to_i).sort.keep_if { |i| i <= basket }
    result = []

  



  #if basket.between?(11, 200)
    #pile = pile.scan(/\d+/).map(&:to_i).sort.keep_if { |i| i <= basket}
    #pile_max = pile.permutation.to_a.uniq.map {|i| i.inject(0) { |sum, i| sum+i <= basket ? sum+i : sum } }.max
  #else pile_max = 0; end
  #"The basket weighs #{pile_max} kilograms"
end

p pack_basket(43, 'dust 1 dust 4 dust 3 1 dust 31 32 100 dust')

=begin
def pack_basket(basket,pile)


  #if basket.between?(11, 200)
    pile = pile.scan(/\d+/).map(&:to_i).sort.keep_if { |i| i <= basket}
    return arr if basket==0
    sum(pile, basket)

  #else pile_max = 0; end
  #"The basket weighs #{pile_max} kilograms"
end

p pack_basket(43, 'dust 1 dust 4 dust 3 1 dust 31 32 100 dust')




def pack_basket(basket,pile)
  if basket.between?(11, 200)
    pile = pile.scan(/\d+/).map(&:to_i).sort.keep_if { |i| i <= basket}
    pile_max = pile.permutation.to_a.uniq.map {|i| i.inject(0) { |sum, i| sum+i <= basket ? sum+i : sum } }.max
  else pile_max = 0; end
  "The basket weighs #{pile_max} kilograms"
end
=end