# Rail Dispatch Service Thinknetica. HW 3
# Route class

class Route
  attr_accessor :route 
  def initialize
    @route = []
  end

  def add_station(station)
    route.push(station)
  end

  def rm_station(station)
    route.delete(station)
  end

  def list
    @route
  end

  def last
    route.last
  end

  def first
    route.first
  end

end
