class RailwayStation
  attr_accessor :trains

  def initialize(name, *trains)
    @name, @trains = name, trains
    puts "You built the station '#{name}'. Congrats!"
  end

  def add_train=(train)
    @trains << train
  end

  def trains_by(type)
    @trains.select { |i| i.type == type }
  end

  def send_train(train)
    @trains.delete(train)
  end
end

station = RailwayStation.new(01)
station.add_train = 'Train1'
station.add_train = 'Train2'
station.send_train('Train2')
p station.trains




class Route
  def initialize(from, to, *additional)
    @from, @to, @additional = from, to, additional
  end

  def route
    @additional.empty? ? [@from, @to] : [@from, @additional, @to].flatten
  end

  def add_station=(station)
    @additional << station
  end

  def delete_station(station)
    @additional.delete(station)
  end
end


class Train
  attr_reader :total_wagons, :type
  attr_accessor :speed

  def initialize(speed=0, type, total_wagons)
    @speed, @type, @total_wagons = speed, type, total_wagons
  end

  def add
    @total_wagons+=1 if @speed.zero?
  end

  def stop
    @speed = 0
  end

  def set_route=(train_route)
    @train_route = train_route
  end



  def station_list
    @train_route.route
  end


  def go
    #@index+=1 unless @index > @train_route.size
  end

  def current_station
    @train_route[@index]
  end

  def pred_station
    @train_route[@index-1] unless index.zero?
  end

  def next_station
    @train_route[@index+1] unless @index > @train_route.size-1
  end

end


=begin
#load 'train.rb'
railwayst1 = RailwayStation.new('RailWayStation Start')
railwayst2 = RailwayStation.new('RailWayStation Finish')
railwayst3 = RailwayStation.new('RailWayStation Secondary')
route1 = Route.new(railwayst1, railwayst2, railwayst3)
train1 = Train.new('type_1', 1)
train1.set_route = route1
p train1.station_list


#p railwayst1.add_train = train1


#p train1.train_route

=end