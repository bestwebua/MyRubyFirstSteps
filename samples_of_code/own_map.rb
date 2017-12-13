=begin
Own .map by Vladislav Trotsenko.
=end

class Array
  def map(&block)
    for index in 0...size
      (arr ||= []) << yield(self[index])
    end if block_given?
  arr.nil? ? self : arr
  end
end


('a'..'d').to_a.map(&:upcase)