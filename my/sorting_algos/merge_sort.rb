=begin
Merge sort algo realization by Vladislav Trotsenko.

The complexity of the algorithm: O(n log n).
=end

def merge_sort(arr)
  return arr unless arr.size > 1 #recursion break
    mid = arr.size/2
      a, b, sorted = merge_sort(arr[0...mid]), merge_sort(arr[mid..-1]), []
    sorted << (a[0] < b[0] ? a.shift : b.shift) while [a,b].none?(&:empty?)
  sorted + a + b
end

p merge_sort([4,2,1,8,6,3,7,5,10])