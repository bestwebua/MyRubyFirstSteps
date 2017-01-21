=begin
Who likes it? Solution by Vladislav Trotsenko.
https://www.codewars.com/kata/who-likes-it
=end

def likes(names)
	case names.size
		when 0 then "no one likes this"
		when 1 then "#{names[0]} likes this"
		when 2 then "#{names[0]} and #{names[1]} like this"
		when 3 then "#{names[0]}, #{names[1]} and #{names[2]} like this"
		else "#{names[0]}, #{names[1]} and #{names.size-2} others like this"; end
end

likes(['Alex', 'Jacob', 'Mark', 'Max', 'Hellboy'])

=begin
Super refactoring code:
def likes(list)
  names = list.dup
  names << 'no one' if names.empty?
  names[2..-1] = "#{names.size - 2} others" if names[3]
  names[-2..-1] = names.last(2).join ' and ' unless names.size == 1
  "#{ names.join(', ') } like#{'s' if list.size < 2} this"
end

Before refactoring code:
def likes(names)
	total = names.size
		result = case total
			when 0 then "no one likes this"
			when 1 then "#{names[0]} likes this"
			when 2 then "#{names[0]} and #{names[1]} like this"
			when 3 then "#{names[0]}, #{names[1]} and #{names[2]} like this"
			else "#{names[0]}, #{names[1]} and #{total-2} others like this"
		end
	result
end
=end