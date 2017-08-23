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
  puts "Players info"
  players.each { |player| puts player }
end

fighters = ['Fighter 1', 'Fighter 2', 'Fighter 3', 'Fighter 4', 'Fighter 5'].map { |player| Player.new(player) }
fight(fighters)