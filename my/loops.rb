#6 solutions of loops exercises

#1 using while
i = 1
while i <= 50 do
    puts i
    i += 1
end

#2 using until
i = 1
until i == 51 do
    puts i
    i += 1
end

#3 using for
for i in 1..50
	puts i
end

#4 using loop
i = 0
loop do
	i += 1
	puts i
	break if i == 50
end

#5 using each
i = (1..50).each { |i| puts i }
=begin
i = (1..50)
i.each do |i|
	puts i
end
=end

#6 using times
i = 0
50.times {puts i += 1}