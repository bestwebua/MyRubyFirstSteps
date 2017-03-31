def combination_sum(candidates, target)
  result = []
    until target==0
      max = candidates.select { |i| i <= target }.max
      result << max
      target-=max
    end
  result
end

p combination_sum([1, 2, 3, 6], 7)


=begin
def combination_sum(candidates, target)
  result = []
end

p combination_sum([2, 3, 6, 7], 7)
=end