# Rail Dispatch Service Thinknetica. HW 3
# RailwayStation class

class RailwayStation 
  attr_accessor :train_list, :name_statiton
  attr_reader :train_registry

  def initialize(name, train_registry)
    @train_registry = train_registry
    @name_statiton = name
    @train_list = []
    puts "[Rail Dispatch Service]: You built the station #{name.to_s.capitalize}. Congrats!"
  end

  def allow_departure!(train)
    train.on_station =  false
    train.speed = 50
    train_list.delete(train)
    puts "[Rail Dispatch Service]: Station #{name_statiton.to_s.capitalize} allow the train \# #{train.number} to derparture"
    self
  end

  def allow_arrival!(train)
    train.on_station = true 
    train_list.push(train)
    puts "[Rail Dispatch Service]: The train \# #{train.number} is on the station #{name_statiton.to_s.capitalize}"
    self
  end

  def trains_list_expanded
    puts "There are(is), Cargo: #{trains_calc[0]} passenger #{trains_calc[1]} at the #{name_statiton.to_s.capitalize} station" 
  end

  def trains_calc
    cargo, passenger = [0,0]
    train_list.each do |train|
      cargo += 1 if train.type == :cargo
      passenger += 1 if train.type == :passenger
    end
    [cargo, passenger]
  end

  def waiting_for_allow
    here = []
    train_registry.each do |train|
      here.push train.number if  name_statiton == train.station
    end
    puts !here.empty? ? "[Rail Dispatch Service]: At the #{@name_statiton} station, #{here.join} waiting for allow " : "at #{name_statiton.to_s.capitalize}, nobody waiting for allow"
  end
end