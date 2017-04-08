class Array
  def bubbles_sort
    loop do
      swapped = false
        (self.size-1).times do |index|
          if self[index] > self[index+1]
            self[index], self[index+1] = self[index+1], self[index]; swapped = true
          end
        end
      break if not swapped
    end
  self
  end 
end

array = ['c','a','d','b']
array.bubbles_sort