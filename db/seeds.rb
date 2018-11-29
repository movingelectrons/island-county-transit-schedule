# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Route.create([
  {name:'1 Northbound',index:1},
  {name:'57 Southbound',index:99}
])

r1n = Route.find_by_name("1 Northbound")
Stop.create([
  {route_id:r1n.id,name:'Depart/nClinton/nFerry',index:1},
  {route_id:r1n.id,name:'Clinton/nP&R',index:2},
  {route_id:r1n.id,name:'Humphrey/nRd P&R',index:3},
  {route_id:r1n.id,name:'SR 525 at/nLangley/nRd',index:4},
  {route_id:r1n.id,name:'Bayview/nP&R',index:5},
  {route_id:r1n.id,name:'Freeland/nMain St/nat WiFire',index:6},
  {route_id:r1n.id,name:'Greenbank/nat/SR 525',index:7},
  {route_id:r1n.id,name:'Coupeville/nP&R',index:8},
  {route_id:r1n.id,name:'Monroe///nArnold',index:9},
  {route_id:r1n.id,name:'Walmart',index:10},
  {route_id:r1n.id,name:'Harbor/nStation',index:11}
])

Schedule.create([
  {stop_id:Stop.find_by_index(1).id,time:"N//A",index:1},
  {stop_id:Stop.find_by_index(2).id,time:"N//A",index:1},
  {stop_id:Stop.find_by_index(3).id,time:"N//A",index:1},
  {stop_id:Stop.find_by_index(4).id,time:"N//A",index:1},
  {stop_id:Stop.find_by_index(5).id,time:"N//A",index:1},
  {stop_id:Stop.find_by_index(6).id,time:"N//A",index:1},
  {stop_id:Stop.find_by_index(7).id,time:"N//A",index:1},
  {stop_id:Stop.find_by_index(8).id,time:"5:05",index:1},
  {stop_id:Stop.find_by_index(9).id,time:"5:16",index:1},
  {stop_id:Stop.find_by_index(10).id,time:"5:22",index:1},
  {stop_id:Stop.find_by_index(11).id,time:"5:30",index:1}
])

