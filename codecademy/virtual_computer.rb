class Machine
  @@users = Hash.new
  
  def initialize(username, password)
    @username = username
    @password = password
    @@users[username] = password
    @files = Hash.new
  end
  
  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "#{filename} was created by #{@username} at #{time}."
  end

  def delete(filename)
	@files.has_key?(filename) ? @files.delete(filename) : (puts 'File not found!')
  end

  def list
  	@files.empty? ? (puts 'No files here!') : (@files.each {|key, value| print "\"#{key}\" " })
  end
  
  def Machine.get_users
    puts @@users
  end

end

my_machine = Machine.new('superuser', 'password')
my_machine.create('123.txt')
my_machine.delete('123.txt')
my_machine.list