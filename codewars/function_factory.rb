=begin
Function-Factory by Vladislav Trotsenko.

=end

def function_factory(x,y,o)
  eval("#{x} #{o} #{y}")
end

p function_factory(14,4,'%')