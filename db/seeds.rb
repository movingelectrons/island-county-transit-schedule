# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Route.create([
  {name:'1S - Oak Harbor => Clinton Ferry',index:1},
  {name:'1N - Clinton Ferry => Oak Harbor',index:2},
  {name:'57 Southbound',index:99}
])

r1n = Route.find_by_name("1N - Clinton Ferry => Oak Harbor")
Stop.create([
  {route_id:r1n.id,name:'Depart<br>Clinton<br>Ferry',index:1},
  {route_id:r1n.id,name:'Clinton<br>P&R',index:2},
  {route_id:r1n.id,name:'Humphrey<br>Rd P&R',index:3},
  {route_id:r1n.id,name:'SR 525 at<br>Langley<br>Rd',index:4},
  {route_id:r1n.id,name:'Bayview<br>P&R',index:5},
  {route_id:r1n.id,name:'Freeland<br>Main St<br>at WiFire',index:6},
  {route_id:r1n.id,name:'Greenbank<br>at/SR 525',index:7},
  {route_id:r1n.id,name:'Coupeville<br>P&R',index:8},
  {route_id:r1n.id,name:'Monroe/<br>Arnold',index:9},
  {route_id:r1n.id,name:'Walmart',index:10},
  {route_id:r1n.id,name:'Harbor<br>Station',index:11}
])

r1s = Route.find_by_name("1S - Oak Harbor => Clinton Ferry")
Stop.create([
  {route_id:r1s.id,name:'Depart<br>Harbor<br>Station',index:1},
  {route_id:r1s.id,name:'Walmart',index:2},
  {route_id:r1s.id,name:'Coupeville<br>Elementary',index:3},
  {route_id:r1s.id,name:'Greenbank',index:4},
  {route_id:r1s.id,name:'SR 525 at<br>Classic<br>Rd',index:5},
  {route_id:r1s.id,name:'Smugglers<br>Cove<br>at SW State<br>Park',index:6},
  {route_id:r1s.id,name:'Freeland<br>Main St<br>at Corey<br>Oil',index:7},
  {route_id:r1s.id,name:'Bayview<br>P&R',index:8},
  {route_id:r1s.id,name:'SR 525 at<br>Cultis<br>Bay',index:9},
  {route_id:r1s.id,name:'Clinton<br>P&R',index:10},
  {route_id:r1s.id,name:'Clinton<br>Ferry',index:11}
])

Run.create([
  {route_id:r1n.id,times:"N/A,N/A,N/A,N/A,N/A,N/A,N/A,5:05,5:16,5:22,5:30",index:1}
])

