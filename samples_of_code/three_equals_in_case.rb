class Ticket
  attr_accessor :venue, :date
  def initialize(venue, date)
    @venue = venue
    @date = date
  end
  def ===(other_ticket)
    self.venue == other_ticket.venue
  end
end

ticket1 = Ticket.new('Town Hall', '07/08/13')
ticket2 = Ticket.new('Conference Center', '07/08/13')
ticket3 = Ticket.new('Town Hall', '08/09/13')

puts "Ticket1 is for an event at: #{ticket1.venue}."

case ticket1
  when ticket2 #ticket2 === ticket1 => false
    puts 'Same location as Ticket2!'
  when ticket3 #ticket3 === ticket1 => true
    puts 'Same location as Ticket3!'
  else
    puts 'No match.'
end

#Use @ when you want to access the variable directly,
#and self. when you want to access via the method.