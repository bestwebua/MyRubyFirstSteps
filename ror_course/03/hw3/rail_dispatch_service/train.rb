# Rail Dispatch Service Thinknetica. HW 3
# Train class
class TrainRegistry < Array
end

class Train 
  attr_reader :length, :type, :station, :number
  attr_accessor  :speed, :on_station, :route

  def initialize(type, length, number, train_registry)
    @number = number
    @type = type == :cargo ? :cargo : :passenger  
    @length = length
    @speed = 0
    train_registry.push(self)
    puts "[Rail Dispatch Service]: A train \# #{number} was initiated"
    self
  end

  def speed_up
    @speed + 10
    puts "[Rail Dispatch Service]: Speed of the train \# #{number} was raised (+10)"
    self
  end

  def speed_down
    @speed + 10
    puts "[Rail Dispatch Service]: Speed of the train \# #{number} was lowered (-10)"
    self
  end

  def unhook 
    if @speed == 0 && @length > 0
      @length -= 1 
      puts "[Rail Dispatch Service]: One railway wagon of the train \# #{number} was unhooked, length is #{@length} railway wagons"
    else
      puts "[Rail Dispatch Service]: Error, the train \# #{number} is moving or don't have railway wagon to unhook"
    end
    self
  end

  def attach
    if @speed == 0 && @length > 0
      @length += 1 
      puts "[Rail Dispatch Service]: One railway wagon of the train \# #{number} was attached. length is #{@length} railway wagons"
    else
      puts "[Rail Dispatch Service]: Error, the train \# #{number} is moving or don't have railway wagon to unhook"
    end
    self
  end

  def route!(route)
    @route = route.list
    @station = route.first
    puts "[Rail Dispatch Service]: The train \# #{number} has received a route"
    self
  end

  def route_last
    puts "[Rail Dispatch Service]: The last station in a route of the train \# #{number} is #{route.last.capitalize}"
    self
  end

  def route_first
    puts "[Rail Dispatch Service]: The first station in a route of the train \# #{number} is #{route.first.to_s.capitalize}"
    self
  end

  def move!
    unless @on_station == true & next_station
      @station = next_station
      speed = 0
      puts "[Rail Dispatch Service]: The train \# #{number} has arrived on the station #{station.to_s.capitalize}"
    else
      puts "[Rail Dispatch Service]: Error, The train \# #{number} can't move. You haven't a permition to move or you're on a final staion of your route. You need to get allow to departure in the #{@station.to_s.capitalize} station first, or get new route"
    end
    self
  end

  def to_s
    "number: #{number}, type: #{type}, length: #{length}"
  end


  def next_station
    next_index = route.index(@station) + 1
    route[next_index]
  end

end