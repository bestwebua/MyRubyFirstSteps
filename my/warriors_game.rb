=begin
Warriors Game by Vladislav Trotsenko.
You can use unlimited number of players.
=end

class Player
  attr_accessor :name, :health, :power
  def initialize(players_name)
    @name = players_name
    @health = rand(1..100)
    @power = rand(1..20)
  end
  def isAlive?
    @health > 0
  end
  def hit(opponent)
    opponent.health -= self.power
  end
  def to_s
    "#{name}: Health: #{health}, Power: #{power}"
  end
end

def fight(players)
  abort 'Nobody to fight with...' if players.size == 1
    puts "Let's fight!"
      until players.count(&:isAlive?) == 1 do
        attacking, taking_a_hit = players.select(&:isAlive?).sample(2)
          attacking.hit(taking_a_hit)
        show_info(players)
      end
    winner = players.find(&:isAlive?).name
  puts "#{winner} is won!"
end

def show_info(players)
  puts 'Players info'
  players.each { |player| puts player }
end

fighters = ('Fighter 1'..'Fighter 10').map { |player| Player.new(player) }
fight(fighters)


=begin
#Base ugly version from SoloLearn :)

class Player
  attr_accessor :name, :health, :power
  def initialize(n, h, pow)
    @name = n
    @health = h
    @power = pow
  end
  def isAlive
    @health > 0
  end
  def hit(opponent)
    opponent.health -= self.power
  end
  def to_s
    "#{name}: Health: #{health}, Power: #{power}"
  end
end

def fight(p1, p2)
  while p1.isAlive && p2.isAlive
    p1.hit(p2)
    p2.hit(p1)      
    show_info(p1, p2)
  end
    
  if p1.isAlive 
    puts "#{p1.name} WON!" 
  elsif p2.isAlive
    puts "#{p2.name} WON!" 
  else
    puts "TIE!"
  end
end

def show_info(*p)
  p.each { |x| puts x}
end

#initialize Players
puts "PLAYERS INFO"
p1 = Player.new("Player 1", 1+rand(100), 1+rand(20))
p2 = Player.new("Player 2", 1+rand(100), 1+rand(20))

#show Player info
show_info(p1, p2)

puts "LETS FIGHT!"
fight(p1, p2)
=end