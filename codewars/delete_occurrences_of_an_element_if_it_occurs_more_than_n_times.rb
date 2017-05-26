=begin
Delete occurrences of an element if it occurs more than n times by Vladislav Trotsenko.

=end

def delete_nth(order, max_e)
  dict = Hash.new(0)
  order.reject { |item| (dict[item]+=1) > max_e }
end

delete_nth([20,37,20,21], 1)

=begin
Before refactoring code:
def delete_nth(order, max_e)
  result = []
    order.each { |i| result << i if result.count(i) < max_e }
  result
end
=end