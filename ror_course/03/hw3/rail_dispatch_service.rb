# Rail Dispatch Service Thinknetica. HW 3

require_relative "rail_dispatch_service/train.rb"
require_relative "rail_dispatch_service/route.rb"
require_relative "rail_dispatch_service/rail_way_station.rb"

kazan_register_trains = TrainRegistry.new
moskow = RailwayStation.new :moskow, kazan_register_trains
st_petersburg = RailwayStation.new :st_petersburg, kazan_register_trains
kazan = RailwayStation.new :kazan, kazan_register_trains

r1 = Route.new
r1.add_station :moskow
r1.add_station :murom
r1.add_station :kanash
r1.add_station :kazan

r2 = Route.new
r2.add_station :kazan
r2.add_station :kanash
r2.add_station :murom
r2.add_station :moskow


t1 = Train.new :cargo, 5, :t1, kazan_register_trains
t1.route! r1

t2 = Train.new :passenger, 3, :t2, kazan_register_trains
t2.route! r2
moskow.waiting_for_allow
t3 = Train.new :cargo, 8, :t3, kazan_register_trains
t4 = Train.new :cargo, 8, :t4, kazan_register_trains
moskow.allow_arrival! t1
t1.attach.attach.attach
t1.move!
moskow.allow_departure! t1
t1.move!
t1.speed_down
t1.move!
t1.speed_up.speed_up.speed_up
t1.move!
t1.move!
t3.route! r2
t4.route! r2
kazan.allow_arrival! t1
kazan.allow_arrival! t2
kazan.allow_arrival! t3
kazan.allow_arrival! t4
kazan.trains_list_expanded
t1.route! r1
t1.route_last
t1.route_first

puts kazan.train_list


