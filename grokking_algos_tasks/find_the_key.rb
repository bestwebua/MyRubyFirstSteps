#with loop
def find_the_key(arr, key)
  found = false
    for i in 0...arr.size
      found = true and break if arr[i] == key
    end
  found
end

#with enum
def find_the_key(arr, key)
  arr.find { |item| item == key }.nil? ? false : true
end

#with enum
def find_the_key(arr, key)
  arr.include?(key)
end


box = ('a'..'z').to_a.shuffle
p find_the_key1(box, 'k')