#Using yield and block

class BlockDemo

  def welcome(*person, &message) #*person create an array with the arguments
    person.each do |p|
      puts "Hi #{p}... How are you?"
      yield if block_given? #Excludes an error if block not passed
    end
  end

end


demo_object=BlockDemo.new
demo_object.welcome('Bobby', 'Max', 'Ruby') { puts 'See you again!' }