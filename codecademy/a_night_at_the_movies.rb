movies = { :'Evil Dead' => 3, :'Matrix' => 4 }
choice, rating = nil

until choice == 'add' || choice == 'update' || choice == 'display' || choice == 'delete' do
	puts 'Type your command. It may be: add, update, display or delete'
	choice = gets.chomp
end

case choice
when 'add' then

	puts 'Type movie title:'
	title = gets.chomp.to_sym

    while movies.key?(title)
        puts "The movie already exists! Let's add another movie:"
        title = gets.chomp.to_sym   
	end
	puts 'Your movie title has been successfully added!'

puts 'Rate it (from 1 till 4):'
until (1..4).include? rating do
rating = gets.chomp.to_i
puts 'Error! Use range from 1 till 4:'
end
puts 'Thanks for the rate!'

movies.store(title, rating)		#Puts data into hash
puts 'Your data has been successfully added!'


when 'update' then

	puts 'Enter the existing movie:'
	title = gets.chomp.to_sym

    unless movies.key(title)
        
        puts "Re-rate this movie! Last rating for this movie is: #{movies[title]}"
        rating = gets.chomp.to_i
        movies[title] = rating 	#New value for the key
        puts 'Thanks for the rerate!'

    else
        puts 'Movie does not exists!'
	end

when 'display' then
	
	movies.each { |movie, rating| puts "#{movie}: #{rating}" }

when 'delete' then

	puts 'Enter the existing movie:'
	title = gets.chomp.to_sym

	if movies.key(title)
		movies.delete(title)
		puts "#{title} movie has been successfully deleted!"
	else
		puts 'Movie does not exists!'
	end
	
end