def bubbles_sort(*arr)
  loop do
    swapped = false
      (arr.size-1).times do |index|
        if arr[index] > arr[index+1]
          arr[index], arr[index+1] = arr[index+1], arr[index]; swapped = true
        end
      end
    break if not swapped
  end
  arr
end

p bubbles_sort(10,2,1,3,5,0,4)